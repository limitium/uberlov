<?php

require_once sfConfig::get('sf_plugins_dir') . '/sfForkedDoctrineApplyPlugin/modules/sfApply/lib/BasesfApplyActions.class.php';

class sfApplyActions extends BasesfApplyActions {

    public function executeSettings(sfRequest $request) {
        $request->setParameter('id', $this->getUser()->getProfile()->getId());
        $this->forward('profile', 'edit');
    }
    public function executeApply(sfRequest $request)
  {
    //If user is logged in, we're forwarding him to settings page from apply
    $this->forwardIf($this->getUser()->isAuthenticated(), 'sfApply', 'settings');

    // we're getting default or customized applyForm for the task
    if( !( ($this->form = $this->newForm( 'applyForm' ) ) instanceof sfGuardUserProfileForm) )
    {
      // if the form isn't instance of sfApplyApplyForm, we don't accept it
      throw new InvalidArgumentException(
          'The custom apply form should be instance of sfApplyApplyForm' );
    }

    //Code below is used when user is sending his application!
    if( $request->isMethod('post') )
    {
      //gathering form request in one array
      $formValues = $request->getParameter( $this->form->getName() );
      if(sfConfig::get('app_recaptcha_enabled') )
      {
        $captcha = array(
          'recaptcha_challenge_field' => $request->getParameter('recaptcha_challenge_field'),
          'recaptcha_response_field'  => $request->getParameter('recaptcha_response_field'),
        );
        //Adding captcha to form array
        $formValues = array_merge( $formValues, array('captcha' => $captcha)  );
      }
        //binding request form parameters with form
      $this->form->bind( $formValues, $request->getFiles( $this->form->getName() ) );
      if ($this->form->isValid())
      {
        $guid = "n" . self::createGuid();
        $this->form->getObject()->setValidate( $guid );
        $date = new DateTime();
        $this->form->getObject()->setValidateAt( $date->format( 'Y-m-d H:i:s' ) );
        $this->form->save();
        $confirmation = sfConfig::get( 'app_sfForkedApply_confirmation' );
        if( $confirmation['apply'] )
        {
          try
          {
            //Extracting object and sending creating verification mail
            $profile = $this->form->getObject();
            $this->sendVerificationMail($profile);
            return 'After';
          }
          catch (Exception $e)
          {
            //Cleaning after possible exception thrown in ::sendVerificationMail() method
            $profile = $this->form->getObject();
            $user = $profile->getUser();
            $profile->delete();
            $user->delete();
            //We rethrow exception for the dev environment. This catch
            //catches other than mailer exception, i18n as well. So developer
            //now knows what he's up to.
            if( sfContext::getInstance()->getConfiguration()->getEnvironment() === 'dev' )
            {
              throw $e;
            }
            return 'MailerError';
          }
        }
        else
        {
          $this->activateUser( $this->form->getObject()->getUser() );
          return $this->redirect( '@homepage' );
        }
      }
    }
  }
}

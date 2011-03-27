<?php

class htPagerLayout extends Doctrine_Pager_Layout {

    public static function create(Doctrine_Query $query, $url, $page = 1, $perPage = 10) {
        return new self(
                new Doctrine_Pager(
                        $query,
                        $page,
                        $perPage
                ),
                new Doctrine_Pager_Range_Sliding(array(
                    'chunk' => 10
                )),
                $url
        );
    }

    public function __construct($pager, $pagerRange, $urlMask) {
        parent::__construct($pager, $pagerRange, $urlMask);

        $this->setTemplate('{link_to}{%page}{/link_to}');
        $this->setSelectedTemplate('<span>{%page}</span>');
    }

    public function display($options = array(), $return = false) {
        $pager = $this->getPager();
        $str = '<div class="pager">';

        $str .= '<div class="prevnext">';
        // Previous page
        if ($pager->getPage() != 1) {
            $this->addMaskReplacement('page', '← туда', true);
            $options['page_number'] = $pager->getPreviousPage();
            $str .= $this->processPage($options);
        }
        // Next page
        if ($pager->getPage() != $pager->getLastPage()) {
            $this->addMaskReplacement('page', 'сюда →', true);
            $options['page_number'] = $pager->getNextPage();
            $str .= $this->processPage($options);
        }
        $str .= '</div>';

        $str .= '<ul>';
        // First page
        if ($pager->getPage() > $this->getPagerRange()->getOption('chunk') - floor($this->getPagerRange()->getOption('chunk') / 2)) {
            $str .= '<li>';
            $options['page_number'] = $pager->getFirstPage();
            $this->removeMaskReplacement('page');
            $str .= $this->processPage($options) . '...';
            $str .= '</li>';
        }


        // Pages listing
        if ($this->getPager()->haveToPaginate()) {
            $str .= '<li>';
            $this->removeMaskReplacement('page');
            $this->setSeparatorTemplate('</li><li>');
            $str .= parent::display($options, true);
            $this->setSeparatorTemplate('');
            $str .= '</li>';
        }
        // Last page
        if ($pager->getPage() < $pager->getLastPage() - floor($this->getPagerRange()->getOption('chunk') / 2)) {
            $str .= '<li>';
            $options['page_number'] = $pager->getLastPage();
            $str .= '...' . $this->processPage($options);
            $str .= '</li>';
        }

        $str .= '</ul>';

        $str .= '</div>';
        // Possible wish to return value instead of print it on screen
        if ($return) {
            return $str;
        }

        echo $str;
    }

    protected function _parseTemplate($options = array()) {
        $str = parent::_parseTemplate($options);

        return preg_replace(
                '/\{link_to\}(.*?)\{\/link_to\}/', link_to('$1', $this->_parseUrl($options)), $str
        );
    }

}
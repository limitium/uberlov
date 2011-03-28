<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<head>
    <title><?php echo isset($title) ? $title : 'Uberлов' ?></title>

    <style type="text/css" >
        *{
            margin: 0;
            padding: 0;
            border:0;
        }
        .middle{
            height: 100%;
            text-align: center;
            vertical-align: middle;
            width: 100%;
        }
        .holder{
            margin: 0 auto;
            position: relative;
            text-align: left;
            width: 600px;
        }
        .logo{
            left: 0;
            position: absolute;
            top: 0;
            width: 227px;
        }
        .message{
            color: #404040;
            height: 210px;
            margin: 0 0 0 227px;
            padding-top: 35px;
        }
        body{
            height: 100%;

        }
    </style>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
</head>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <table class ="middle">
            <tr>
                <td>
                    <div class="holder">
                        <div class="logo"><a href="/"><img src="/images/logo.png" alt="уберлов"/></a></div>
                        <div class="message">
                            <h2><?php echo $header ?></h2>
                            <p><?php echo $message . ' Можно попробовать попасть на ' . link_to('главную', '@homepage') . ' страницу.'; ?></p>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </body>
</html>

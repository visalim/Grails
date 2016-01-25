<html lang="en">
<head>
    <meta name="layout" content="main"/>
</head>
    <body>
         <div class="panel-body">
             <g:if test='${flash.message}'>
                 <div class='login_message'>${flash.message}</div>
             </g:if>
            <div class="col-sm-6 col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong> Sign in to continue</strong>
                    </div>
                    <div class="panel-body">
                        <form role="form" action='${postUrl}' name="form" method="post">
                            <fieldset>
                                <div class="row">
                                    <div class="col-sm-12 col-md-10  col-md-offset-1 ">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-user"></i>
                                                </span>
                                                <g:textField class="form-control" placeholder="Username" name="j_username" type="text"/>

                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-lock"></i>
                                                </span>
                                                <g:passwordField class="form-control" placeholder="Password" name="j_password" type="password" value=""/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <g:submitButton class="btn btn-sm btn-primary btn-block" value="Sign" name="login"/>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                    <div class="panel-footer ">
                        Don't have an account! <g:link controller="user" action="signup"> Sign Up Here </g:link>
                    </div>
                </div>
            </div>
        </div>
     </body>
</html>
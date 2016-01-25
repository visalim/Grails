<html lang="en">
    <head>
        <meta name="layout" content="main"/>
    </head>
    <body>
         <div class="panel-body">
            <div class="col-sm-6 col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong> Signup</strong>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="save">

                            <fieldset>
                                <div class="row">
                                    <div class="col-sm-12 col-md-10 col-md-offset-1 ">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-user"></i>
                                                </span>
                                                <g:textField class="form-control" placeholder="Name" name="name" type="text"/>
                                            </div>
                                            <g:hasErrors bean="${user}" field="name">
                                                    <g:eachError  bean="${user}" field="name">
                                                            <g:message error="${it}" />
                                                     </g:eachError>
                                            </g:hasErrors>
                                         </div>
                                    <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-envelope"></i>
                                                </span>
                                                <g:textField class="form-control" placeholder="Email" name="email" type="text"/>

                                            </div>
                                            <g:hasErrors bean="${user}" field="email">
                                                    <g:eachError  bean="${user}" field="email">
                                                            <g:message error="${it}" />
                                                    </g:eachError>
                                            </g:hasErrors>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-lock"></i>
                                                </span>
                                                <g:passwordField class="form-control" placeholder="Password" name="password" type="password" value=""/>
                                            </div>
                                            <g:hasErrors bean="${user}" field="password">
                                                    <g:eachError  bean="${user}" field="password">
                                                         <g:message error="${it}" />
                                                     </g:eachError>
                                            </g:hasErrors>
                                        </div>
                                        <div class="form-group">
                                            <g:submitButton name="signin" class="btn btn-sm btn-primary btn-block" value="Sign in"/>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                    <div class="panel-footer ">
                        Already have an account! <g:link controller="login" action="index"> Sign In Here </g:link>
                    </div>
                </div>
            </div>
        </div>
     </body>
</html>
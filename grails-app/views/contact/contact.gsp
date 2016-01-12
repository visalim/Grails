<html lang="en">
    <head>
        <meta name="layout" content="main"/>
    </head>
    <body>
        <div class="panel-body">
            <div class="col-sm-6 col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>Add Contact</strong>
                    </div>
                    <div class="panel-body">
                        <g:form role="form" action="save">
                            <fieldset>
                                <div class="row">
                                    <div class="col-sm-12 col-md-10  col-md-offset-1 ">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-user"></i>
                                                </span>
                                                <g:hiddenField class="form-control" placeholder="Name" name="id" value="${contact.id}"/>

                                              <g:textField class="form-control" placeholder="Name" name="name" type="text" value="${contact.name}"/>

                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-envelope"></i>
                                                </span>
                                                <g:textField class="form-control" placeholder="Email" name="email" type="text" value="${contact.email}"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-phone-alt"></i>
                                                </span>
                                                <g:textField class="form-control" placeholder="Mobile" name="mobile" type="number" value="${contact.mobile}"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <g:submitButton name="save" class="btn btn-sm btn-primary btn-block" value="Save"/>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
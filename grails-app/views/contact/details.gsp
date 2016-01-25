<html lang="en">
    <head>
        <meta name="layout" content="main"/>
    </head>
    <body>
        <div class="panel-body">
            <div class="col-sm-6 col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">

                        <div class="row panel-title">
                            <div class="col-md-5">Conact Details</div>

                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table table-user-information">
                            <tbody>
                            <tr>
                                <td>Name:</td>
                                <td>${contact.name}</td>
                            </tr>
                            <tr>
                                <td>Email:</td>
                                <td>${contact.email}</td>
                            </tr>
                            <tr>
                                <td>Mobile</td>
                                <td>${contact.mobile}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="panel-footer ">
                        <div class="row">
                            <div class="col-md-4 pull-right">
                                <g:link  action="Edit" class="btn btn-info btn-sm" id="${contact.id}" >Edit</g:link>
                            </div>
                            <div class="col-md-3 pull-right">
                                <g:link action="delete" class="btn btn-info btn-sm" id="${contact.id}">Delete</g:link>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
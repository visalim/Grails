<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
</head>
<body>
    <div class="panel-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped">
                            <tr>

                                <th><span class="glyphicon glyphicon-user"></span> Name</th>
                                <th><span class="glyphicon glyphicon-envelope"></span> Email</th>
                                <th><span class="glyphicon glyphicon-phone-alt"></span> Mobile</th>
                                <th><span class="glyphicon glyphicon-tasks"></span> Action</th>
                            </tr>
                            <g:each in="${contacts}" var="contact">
                                <tr>
                                    <td>${contact.name}</td>
                                    <td>${contact.email}</td>
                                    <td>${contact.mobile}</td>
                                    <td>
                                        <div class="col-md-3"><span class="glyphicon glyphicon-edit"></span>
                                            <g:link action="edit" id="${contact.id}">Edit</g:link>
                                        </div>
                                        <div class="col-md-4"><span class="glyphicon glyphicon-remove-circle"></span>
                                            <g:link action="delete" id="${contact.id}">Delete</g:link>
                                        </div>
                                    </td>
                                </tr>
                            </g:each>
                        </table>
                    </div>
                </div>
            </div>
     </div>
 </body>
</html>
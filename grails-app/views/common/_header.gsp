
<div class="panel-heading">
    <div class="row panel-title">
        <div class="col-md-4">Welcome</div>
        <div class="col-md-4">
            <div class="input-group input-group-sm">
                <span class="input-group-addon"><span class="glyphicon glyphicon-search"></span></span>
                <input type="text" class="form-control" placeholder="Search contact">
            </div>
        </div>
        <div class="col-md-4">
            <sec:ifLoggedIn> <!--the below link will only appears for loggedin user-->
            <g:link action="contact" controller="contact" class="btn btn-default btn-sm pull-right">
                <span class="glyphicon glyphicon-plus"></span>
                New contact
            </g:link>
            </sec:ifLoggedIn>
        </div>
    </div>
</div>
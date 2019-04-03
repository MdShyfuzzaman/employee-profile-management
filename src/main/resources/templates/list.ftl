<div class="generic-container">
    <div class="panel panel-default">
        <!-- Default panel contents -->
		<div class="panel-heading"><span class="lead">Employee </span></div>
		<div class="panel-body">
			<div class="formcontainer">
				<div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
				<div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
				<form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
					<input type="hidden" ng-model="ctrl.user.id"/>
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="uname">Name</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.user.name" id="uname"
									   class="username form-control input-sm" placeholder="Enter your name" required
									   ng-minlength="3"/>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="age">Age</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.user.age" id="age" class="form-control input-sm"
									   placeholder="Enter your Age." required ng-pattern="ctrl.onlyIntegers"/>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">

							<label class="col-md-2 control-lable" for="gender">Gender</label>
							<div class="col-md-7">
								<select class="form-control custom-select" ng-model="ctrl.user.gender" id="gender">
									<option value="M">Male</option>
									<option value="F">Female</option>
									<option value="O">Others</option>
								</select>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="note">Note</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.user.note" id="note" class="form-control input-sm"
									   placeholder="Enter your note." ng-maxlength="255"/>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-actions floatRight">
							<input type="submit" value="{{!ctrl.user.id ? 'Add New Employee' : 'Update'}}"
								   class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid || myForm.$pristine">
							<button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm"
									ng-disabled="myForm.$pristine">Reset Form
							</button>
							<button type="button" ng-click="ctrl.logout()" class="btn btn-warning btn-sm">Logout
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
    </div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
		<div class="panel-heading"><span class="lead">List of Employees </span></div>
		<div class="panel-body">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
					<tr>
						<th>ID</th>
						<th>NAME</th>
						<th>AGE</th>
						<th>Gender</th>
						<th>Note</th>
						<th width="100"></th>
						<th width="100"></th>
					</tr>
					</thead>
					<tbody>
					<tr ng-repeat="u in ctrl.getAllUsers()">
						<td>{{u.id}}</td>
						<td>{{u.name}}</td>
						<td>{{u.age}}</td>
						<td>{{u.gender}}</td>
						<td>{{u.note}}</td>
						<td>
							<button type="button" ng-click="ctrl.editUser(u.id)" class="btn btn-success custom-width">
								Edit
							</button>
						</td>
						<td>
							<button type="button" ng-click="ctrl.removeUser(u.id)" class="btn btn-danger custom-width">
								Remove
							</button>
						</td>
					</tr>
					</tbody>
					<tfoot>
					<tr>
						<td>Gender</td>
						<td>Number of Employee</td>
					</tr>
					<tr>
						<td>Male</td>
						<td></td>
					</tr>
					<tr>
						<td>Female</td>
						<td></td>
					</tr>
					<tr>
						<td>Others</td>
						<td></td>
					</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
	<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><span class="lead">Consume 3rd Party Data </span></div>
		<div class="panel-body">
			<div class="table-responsive" ng-init="ctrl.consumedata()">
				<table class="table table-hover">
					<thead>
					<tr>
						<th>ID</th>
						<th>NAME</th>
					</tr>
					</thead>
					<tbody>
					<tr ng-repeat="x in names">
						<td>{{ x.name }}</td>
						<td>{{ x.distance }}</td>
					</tr>
					</tbody>

				</table>
			</div>
		</div>
	</div>
</div>
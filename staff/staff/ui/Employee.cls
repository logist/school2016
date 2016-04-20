Class staff.ui.Employee
{

ClassMethod GetListTemplate()
{
	&html<
	<md-list>
	  <md-list-item class="md-2-line" ng-repeat="item in ctrl.list" ng-click="ctrl.edit(item.ID)">
	    <div class="md-list-item-text" layout="column">
	      <h3>{{item.General.Surname}}</h3>
	      <h4>{{item.General.Name}} {{item.General.Patroname}}</h4>
	    </div>
	  </md-list-item>
	</md-list>
	>
}

ClassMethod GetListController()
{
	&js<
	angular.module('StaffApp')
	.controller('EmployeeListController',function($resource,$location) {
		var self=this;
		var Employee=$resource('api/object/Employee/:ID')
		self.list=Employee.query();
		self.edit=function(id) {
	        $location.url('/Object/Employee/'+id);
		}
	});
	>
}

ClassMethod GetEditTemplate()
{
	&html<
	<form>
	<md-input-container class="md-block" flex-gt-sm>
		<label>Фамилия</label>
		<input ng-model="ctrl.obj.General.Surname">
	</md-input-container>
	<div layout-gt-sm="row">
          <md-input-container class="md-block" flex-gt-sm>
            <label>Имя</label>
            <input ng-model="ctrl.obj.General.Name">
          </md-input-container>
          <md-input-container class="md-block" flex-gt-sm>
            <label>Отчество</label>
            <input ng-model="ctrl.obj.General.Patroname">
          </md-input-container>
    </div>
      <md-input-container>
        <label>Гражданство</label>
        <md-select ng-model="ctrl.obj.Extended.CitezenshipState.$REFERENCE" md-on-close="ctrl.obj.Extended.CitezenshipState.$CLASSNAME='staff.model.Citizenship'">
          <md-option ng-repeat="item in ctrl.codeTable.Citizenship" value="{{item.ID}}">
            {{item.Name}}
          </md-option>
        </md-select>
      </md-input-container>

      <md-input-container>
        <label>Семейное положение</label>
        <md-select ng-model="ctrl.obj.Extended.MarriageState.$REFERENCE" md-on-close="ctrl.obj.Extended.MarriageState.$CLASSNAME='staff.model.Citizenship'">
          <md-option ng-repeat="item in ctrl.codeTable.Marriage" value="{{item.ID}}">
            {{item.Name}}
          </md-option>
        </md-select>
      </md-input-container>

  <md-toolbar class="md-whiteframe-z1 content-toolbar">
    <h2 class="md-toolbar-tools">
      <span>Документ</span>
    </h2>
  </md-toolbar>

	<div layout-gt-sm="row">
      <md-input-container>
        <label>Тип документа</label>
        <md-select ng-model="ctrl.obj.Document.Type.$REFERENCE" md-on-close="ctrl.obj.Document.Type.$CLASSNAME='staff.model.DocumentType'">
          <md-option ng-repeat="item in ctrl.codeTable.DocumentType" value="{{item.ID}}">
            {{item.Name}}
          </md-option>
        </md-select>
      </md-input-container>
  
	<div layout="row">
	<md-input-container class="md-block" flex-gt-sm>
		<label>Серия</label>
		<input ng-model="ctrl.obj.Document.Serie">
	</md-input-container>
	<md-input-container class="md-block" flex-gt-sm>
		<label>Номер</label>
		<input ng-model="ctrl.obj.Document.Number">
	</md-input-container>
	</div>
	</div>
	  
    <div><md-button ng-click="ctrl.save()" class="md-primary">Сохранить</md-button></div>
	</form>
	>
}

ClassMethod GetEditController()
{
	&js<
	angular.module('StaffApp')
	.controller('EmployeeEditController',function($resource,$routeParams,$window) {
		var self=this;
		self.codeTable={
		};
		var Employee=$resource('api/object/Employee/:ID')
		if ($routeParams.id=='new') {
			self.obj=new Employee();
		} else {
			self.obj=Employee.get({ID:$routeParams.id});
		}
		self.save = function() {
			self.obj.$save().then(function(){
				$window.history.back();
			});
		}
		self.loadCodeTable = function(name) {
			return $resource('api/object/'+name+'/:ID').query('',function(list){
				self.codeTable[name]=list;
			});
		}
		self.loadCodeTable('Citizenship');
		self.loadCodeTable('DocumentType');
		self.loadCodeTable('Marriage');

	});
	>
}

}

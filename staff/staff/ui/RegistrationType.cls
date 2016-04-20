Class staff.ui.RegistrationType
{

ClassMethod GetMenuData() As %Object
{
	set properties=##class(%Object).$new()
	set properties.shortHeader="Тип регистрации"
	set properties.longHeader="Классификатор типа регистрационного учета"
	set properties.className="RegistrationType"
	quit properties
}

ClassMethod GetListTemplate()
{
	&html<
	<md-list>
	  <md-list-item ng-repeat="item in ctrl.list" ng-click="null">
	    <span>{{item.Name}}</span>
	  </md-list-item>
	</md-list>
	>
}

ClassMethod GetListController()
{
	&js<
	angular.module('StaffApp')
	.controller('RegistrationTypeListController',function($resource) {
		var self=this;
		var RegistrationType=$resource('api/object/RegistrationType/:ID')
		self.list=RegistrationType.query();
		self.onListClick=function(id) {
	        $location.url('/Object/RegistrationType/'+id);
		}
	});
	>
}

ClassMethod GetEditTemplate()
{
	&html<
	<form>
      <md-input-container class="md-block">
        <label>Название</label>
        <input ng-model="ctrl.obj.Name">
      </md-input-container>
	<md-button ng-click="ctrl.save()" class="md-primary">Сохранить</md-button>
	</form>
	>
}

ClassMethod GetEditController()
{
	&js<
	angular.module('StaffApp')
	.controller('CitizenshipEditController',function($resource,$routeParams,$window) {
		var self=this;
		var Citizenship=$resource('api/object/Citizenship/:ID')
		self.obj=Citizenship.get({ID:$routeParams.id});
		self.save = function() {
			self.obj.$save().then(function(){
				$window.history.back();
			});
		}
	});
	>
}

}

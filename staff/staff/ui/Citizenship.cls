Class staff.ui.Citizenship
{

ClassMethod GetMenuData() As %Object
{
	set properties=##class(%Object).$new()
	set properties.shortHeader="Гражданство"
	set properties.longHeader="Классификатор Гражданства"
	set properties.className="Citizenship"
	quit properties 
}

ClassMethod GetListTemplate()
{
	&html<
	<md-list>
	  <md-list-item ng-repeat="item in ctrl.list" ng-click="ctrl.onListClick(item.ID)">
	    <span>{{item.Name}}</span>
	  </md-list-item>
	</md-list>
	>
}

ClassMethod GetListController()
{
	&js<
	angular.module('StaffApp')
	.controller('CitizenshipListController',function($resource,$location) {
		var self=this;
		var Citizenship=$resource('api/object/Citizenship/:ID')
		self.list=Citizenship.query();
		self.onListClick=function(id) {
	        $location.url('/Object/Citizenship/'+id);
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
			obj.$save().then(function(){
				$window.history.back();
			});
		}
	});
	>
}

}

Class staff.ui.Marriage
{

ClassMethod GetMenuData() As %Object
{
	set properties=##class(%Object).$new()
	set properties.shortHeader="Семейное положение"
	set properties.longHeader="Классификатор Семейных положений"
	set properties.className="Marriage"
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
	.controller('MarriageListController',function($resource,$location) {
		var self=this;
		var Marriage=$resource('api/object/Marriage/:ID')
		self.list=Marriage.query();
		self.onListClick=function(id) {
	        $location.url('/Object/Marriage/'+id);
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
	.controller('MarriageEditController',function($resource,$routeParams,$window) {
		var self=this;
		var Marriage=$resource('api/object/Marriage/:ID')
		self.obj=Marriage.get({ID:$routeParams.id});
		self.save = function() {
			self.obj.$save().then(function(){
				$window.history.back();
			});
		}
	});
	>
}

}

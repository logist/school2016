/// Интерфейс списка документов
Class staff.ui.DocumentType
{

/// Строка в главном меню
ClassMethod GetMenuData() As %Object {
	set properties=##class(%Object).$new()
	set properties.shortHeader="Тип документа"
	set properties.longHeader="Классификатор типа документа"
	set properties.className="DocumentType"
	quit properties
}

/// Шаблон для списка
ClassMethod GetListTemplate() {
	&html<
	<md-list>
	  <md-list-item ng-repeat="item in ctrl.list" ng-click="null">
	    <span>{{item.Name}}</span>
	  </md-list-item>
	</md-list>
	>
}

/// Контроллер для списка
ClassMethod GetListController() {
	&js<
	angular.module('StaffApp')
	.controller('DocumentTypeListController',function($resource) {
		var self=this;
		var DocumentType=$resource('api/object/DocumentType/:ID')
		self.list=DocumentType.query();
		self.onListClick=function(id) {
	        $location.url('/Object/DocumentType/'+id);
		}
	});
	>
}

/// Шаблон для редактирования
ClassMethod GetEditTemplate() {
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

/// Контроллер для редактирования
ClassMethod GetEditController() {
	&js<
	angular.module('StaffApp')
	.controller('DocumentTypeEditController',function($resource,$routeParams,$window) {
		var self=this;
		var DocumentType=$resource('api/object/DocumentType/:ID')
		self.obj=DocumentType.get({ID:$routeParams.id});
		self.save = function() {
			self.obj.$save().then(function(){
				$window.history.back();
			});
		}
	});
	>
}

}

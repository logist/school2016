/// Домашняя страница
Class staff.ui.Home Extends %CSP.Page
{

ClassMethod OnPage() As %Status [ ServerOnly = 1 ]
{
	&html<
	<html lang="ru" >
	<head>
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <!-- Angular Material style sheet -->
	  <link rel="stylesheet" href="assets/angular-material.min.css">
	  <style type="text/css">
	  .content-toolbar {
	    background: #f6f6f6 !important;
	    color: #202020 !important;
	    z-index: 3;
	  }
	  [ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak {
 		display: none !important;
	  }
	  </style>
	</head>
	<body ng-app="StaffApp" ng-controller="MainController as main" layout="column" ng-cloak>

  <section layout="row" flex="">
	<md-sidenav class="site-sidenav md-sidenav-left md-whiteframe-z2"
      md-component-id="left"
      ng-click="ul.toggleList()" aria-label="Show User List"
      md-is-locked-open="$mdMedia('gt-sm')">

    <md-toolbar class="md-whiteframe-z1">
      <h2 class="md-toolbar-tools">Работники</h3>
    </md-toolbar>
<md-list>
  <md-list-item ng-href="#/Object/Employee">Список работников</span>
  </md-list-item>
  <md-list-item ng-href="#/Object/Employee/new">Добавить работника</span>
  </md-list-item>
  <md-subheader>Справочники</md-subheader>
  <md-list-item ng-repeat="menu in main.menuList" ng-click="main.menuClick(menu)">
    {{menu.shortHeader}}
  </md-list-item>
  </md-sidenav>


  <div flex layout="column" tabIndex="-1" role="main" class="md-whiteframe-z2">

    <md-toolbar layout="row" class="md-whiteframe-z1 content-toolbar">
      <md-button id="main" class="menu" hide-gt-sm ng-click="main.toggleSide()" aria-label="Показать меню">
        <md-icon md-svg-src="assets/menu.svg" style="color:black;" ></md-icon>
      </md-button>
      <h2 class="md-toolbar-tools">{{main.header}}</h3>
    </md-toolbar>

    <md-content flex layout-padding ng-view>


    </md-content>

  </div>
</section>
	  
	  <script src="assets/angular.min.js"></script>
	  <script src="assets/angular-animate.min.js"></script>
	  <script src="assets/angular-aria.min.js"></script>
	  <script src="assets/angular-messages.min.js"></script>
	  <script src="assets/angular-resource.min.js"></script>
	  <script src="assets/angular-route.min.js"></script>

	  <!-- Angular Material Library -->
	  <script src="assets/angular-material.min.js"></script>
	  
	  <!-- Your application bootstrap  -->
	  <script type="text/javascript">    
	  #(..WriteScripts())#
	  </script>
	  
	</body>
	</html>
	>
	Quit $$$OK
}

ClassMethod WriteScripts()
{
	&js<
	angular.module('StaffApp', ['ngMaterial','ngResource','ngRoute'])
	.controller('MainController',function($location, $mdSidenav) {
	    var self=this;
	    self.menuList = #(..GetMenuConfig())#;
	    self.header='Выберите меню'
		self.toggleSide = function() {
            $mdSidenav('left').toggle();
        };
        self.menuClick = function(menu) {
	        self.header=menu.longHeader;
            $mdSidenav('left').close();
	        $location.url('/Object/'+menu.className);
        }
	})


.config(function($routeProvider) {
  $routeProvider
   .when('/Object/:class', {
    templateUrl: function($routeParams) {return 'api/template/list/'+$routeParams.class},
    controller: function($controller,$routeParams) {
	    return $controller($routeParams.class+'ListController');
	},
    controllerAs: 'ctrl'
  })
   .when('/Object/:class/:id', {
    templateUrl: function($routeParams) {return 'api/template/edit/'+$routeParams.class},
    controller: function($controller,$routeParams) {
	    return $controller($routeParams.class+'EditController');
	},
    controllerAs: 'ctrl'
  })

});

	#(..GetControllers())#

	>
	quit ""
}

ClassMethod GetMenuConfig()
{
	set classPrefix="staff.ui",className=classPrefix,menuList=[]
	for {
		set className=$o(^oddCOM(className))
		quit:className'[classPrefix
		continue:'##class(%Dictionary.MethodDefinition).%ExistsId(className_"||GetMenuData")
		do menuList.$push($classMethod(className,"GetMenuData"))
	}
	quit menuList.$toJSON()
}

ClassMethod GetControllers()
{
	set classPrefix="staff.ui",className=classPrefix
	for {
		set className=$o(^oddCOM(className))
		quit:className'[classPrefix
		continue:'##class(%Dictionary.MethodDefinition).%ExistsId(className_"||GetListController")
		do $classMethod(className,"GetListController")
		continue:'##class(%Dictionary.MethodDefinition).%ExistsId(className_"||GetEditController")
		do $classMethod(className,"GetEditController")
	}
	quit ""
}

}

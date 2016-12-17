var simulationApp=angular.module("simulationApp",["ui.router","simulationCtrl","services"]);

simulationApp.config(function($stateProvider, $urlRouterProvider){
	$urlRouterProvider.otherwise('/SimulationX');
	$stateProvider
		.state("Simulation",{
			url:"/Simulation{FeedSystemType}",
			views:{
				"":{
					templateUrl:"../../Areas/Simulation/App/tpls/home.html"
				},
				"list@Simulation":{
					templateUrl:"../../Areas/Simulation/App/tpls/list.html"
				},
				"table@Simulation":{
					templateUrl:"../../Areas/Simulation/App/tpls/paraSetting.html"
				}
			}
		})
});
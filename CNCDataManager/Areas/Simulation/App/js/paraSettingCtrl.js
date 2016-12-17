simulationCtrl.controller("paraSettingCtrl", function ($scope, $state, $stateParams,$http) {
	$scope.startSimulation=function(){
		$http.post("/Simulation/Simulation/StartSimulation")
			.then(function(response){
				console.log(response.data);
			},function(response){
				console.log(response.status);
			})
	}
});
var simulationCtrl = angular.module("simulationCtrl", []);

simulationCtrl.controller("homeCtrl", function ($scope,$locals) {
	//控制仿真中间导航栏显示和隐藏
	var CNCType=$locals.getObject("CNCType");
	if(!CNCType)
	{
		$scope.navShow=[true,true,true,true,true,true];
	}
	else if(CNCType.support="X"){
		$scope.navShow=[false,true,true,true,true,true];
	}
	else if(CNCType.support="C"){
		$scope.navShow=[true,false,false,true,true,true];
	}
	

	//控制中间导航栏active
	$scope.navActive=0;
	$scope.$on("$stateChangeSuccess",function(event,toState,toParams,fromState,fromParams){
		switch(toParams.FeedSystemType){
			case "XY":
				$scope.navActive=0;
				break;
			case "X":
				$scope.navActive=1;
				break;
			case "Y":
				$scope.navActive=2;
				break;
			case "Z":
				$scope.navActive=3;
				break;
			case "S":
				$scope.navActive=4;
				break;
			default:
				break;
		}
	});
});
﻿var CouplingDetailCtrl=angular.module("CouplingDetailCtrl",[]);
CouplingDetailCtrl.controller('CouplingDetailCtrl',function($scope,$state,$stateParams,$data,$http,$locals){
	$scope.FeedSystemType=$stateParams.FeedSystemType;
	$scope.imgsrc="../../Areas/Selection/AppSelection/imgs/Coupling/"+$stateParams.type+".jpg";
	$scope.coupling={};
	
	$http({
		method:"GET",
		url:$data.http+$stateParams.type,
		params:{
			id:$stateParams.id
		}
	}).success(function(data){
		$scope.coupling=data;
	});
	$scope.nextStep=function(){
		$scope.coupling.img="Coupling.jpg";
		$locals.putObject($scope.FeedSystemType+"Coupling",$scope.coupling);
		$scope.$emit('ComponentChange',$scope.FeedSystemType+"Coupling");
		$state.go('FeedSystem.ServoMotor');
	};
	$scope.back=function(){
		$state.go("FeedSystem.Coupling");
	};
});
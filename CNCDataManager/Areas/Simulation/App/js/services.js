var services = angular.module("services", []);

//service自定义服务取出和保存数据到localstorage中
services.service("$locals",["$window",function($window){
	this.put=function(key,value){
		$window.localStorage.setItem(key,value);
	};
	this.get=function(key){
		return $window.localStorage.getItem(key)||"";
	};
	this.putObject=function(key,value){
		return $window.localStorage.setItem(key,JSON.stringify(value));
	};
	this.getObject=function(key){
		return JSON.parse($window.localStorage.getItem(key));
	};
	this.clear=function(){
		$window.localStorage.clear();
	}
}]);
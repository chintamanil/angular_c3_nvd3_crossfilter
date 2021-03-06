angular.module('d3_data').controller 'GraphCtrl', ($scope, $location, $firebaseObject) ->
  url = 'https://incandescent-torch-1684.firebaseio.com/'
  fireRef = new Firebase(url)
  chartdata = $firebaseObject(fireRef)
  chartdata.$loaded().then ->
    console.log 'loaded record:', chartdata.FIELD1, chartdata.FIELD2, chartdata.FIELD3
  $scope.datapoints = [
    x: 10
    "top-1": 10
    "top-2": 15
  ,
    x: 20
    "top-1": 100
    "top-2": 35
  ,
    x: 30
    "top-1": 15
    "top-2": 75
  ,
    x: 40
    "top-1": 50
    "top-2": 45
  ]
  $scope.datacolumns = [
    id: "top-1"
    type: "line"
  ,
    id: "top-2"
    type: "spline"
  ]
  $scope.datax = id: "x"
  $scope.datapoints2 = [
    x: 10
    "top-1": 10
    "top-2": 15
  ,
    x: 20
    "top-1": 100
    "top-2": 35
  ,
    x: 30
    "top-1": 15
    "top-2": 75
  ,
    x: 40
    "top-1": 50
    "top-2": 45
  ]
  $scope.datacolumns2 = [
    id: "top-1"
    type: "line"
    name: "Top one"
    color: "green"
  ,
    id: "top-2"
    type: "spline"
    name: "Top two"
    color: "blue"
  ]
  $scope.datax2 = id: "x"
  $scope.dataset = [
    day: "2013-01-02_00:00:00"
    sales: 13461.295202
    income: 12365.053
  ]
  $scope.schema = day:
    type: "datetime"
    format: "%Y-%m-%d_%H:%M:%S"
    name: "Date"

  $scope.options =
    rows: [
      key: "income"
      type: "bar"
    ,
      key: "sales"
    ]
    xAxis:
      key: "day"
      displayFormat: "%Y-%m-%d %H:%M:%S"


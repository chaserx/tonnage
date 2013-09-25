App.controller 'WeightMeasurementsCtrl', ['$scope', "WeightMeasurement", ($scope, WeightMeasurement) ->
  $scope.message = "Hey there, slim! Weigh in."
  $scope.weight_measurements = WeightMeasurement.query()

  $scope.addWeightMeasurement = ->
    weight_measurement = WeightMeasurement.save($scope.newWeightMeasurement)
    $scope.weight_measurements.push(weight_measurement)
    $scope.newWeightMeasurement = {}
]


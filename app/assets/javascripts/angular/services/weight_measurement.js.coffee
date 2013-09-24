App.factory 'WeightMeasurement', ['$resource', ($resource) ->
  $resource '/api/weight_measurements/:id', id: '@id'
]

require File.dirname(__FILE__) + '/../test_helper'

class ApiWeightMeasurementTest < ActionDispatch::IntegrationTest
  test "should return json from /api/weight_measurements.json" do
    get "/api/weight_measurements.json"
    assert_response :success
    assert body == WeightMeasurement.all.to_json
    weight_measurements = MultiJson.load(response.body)
    assert weight_measurements.any? { |measurement| measurement["value"] == weight_measurements(:positive_lbs).value}
  end
end

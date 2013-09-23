require 'test_helper'

class WeightMeasurementTest < ActiveSupport::TestCase
  setup do
    @measurement_defaults = {
      unit: 'lbs',
      value: 10.0
    }
  end

  test "should be invalid if missing value" do
    measurement = WeightMeasurement.new
    assert !measurement.valid?
  end

  test "should have error keys for unit and value if missing data" do
    measurement = WeightMeasurement.new
    # measurement.save!
    # [:unit, :value].each do |field_name|
    #   assert measurement.errors.keys.include? field_name
    # end
    exception = assert_raises(ActiveRecord::RecordInvalid) {measurement.save!}
    assert_match(/value/i, exception.message)
  end

  test "should have error message for value if value less than zero" do
    measurement = WeightMeasurement.new(unit: 'lbs', value: -10.0)
    exception = assert_raises(ActiveRecord::RecordInvalid) {measurement.save!}
    assert_match(/value/i, exception.message)
  end

  test "should be valid if data exists and is valid" do
    measurement = WeightMeasurement.new(@measurement_defaults)
    assert measurement.valid?
  end
end

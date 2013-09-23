class WeightMeasurement < ActiveRecord::Base
  validates :value, presence: true, numericality: { greater_than: 0 }
end

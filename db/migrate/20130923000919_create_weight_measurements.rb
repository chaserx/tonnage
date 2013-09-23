class CreateWeightMeasurements < ActiveRecord::Migration
  def change
    create_table :weight_measurements do |t|
      t.string :unit, default: 'lbs'
      t.float :value, default: 0.0

      t.timestamps
    end
  end
end

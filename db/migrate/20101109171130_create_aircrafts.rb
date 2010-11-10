class CreateAircrafts < ActiveRecord::Migration
  def self.up
    create_table (:aircrafts, :options => "ENGINE=InnoDB") do |t|
      t.string :code, :limit => 4
      t.string :type, :null => false
      t.string :wake, :limit => 7

      t.timestamps
    end
  end

  def self.down
    drop_table :aircrafts
  end
end

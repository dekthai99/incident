require "migration_helpers"

class CreateAirports < ActiveRecord::Migration
  extend MigrationHelpers
  
  def self.up
    create_table (:airports, :options => "ENGINE=InnoDB") do |t|
      t.integer :country_id, :null => false				#foreign key
      t.string :code, :null => false, :limit => 3
      t.string :name, :null => false, :limit => 45
      t.string :location, :limit => 100

      t.timestamps
    end
   	foreign_key(:airports, :country_id, :countries)
  end

  def self.down
    drop_table :airports
  end
end

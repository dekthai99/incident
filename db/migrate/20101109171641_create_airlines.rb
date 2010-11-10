require "migration_helpers"

class CreateAirlines < ActiveRecord::Migration
  extend MigrationHelpers
  
  def self.up
    create_table (:airlines, :options => "ENGINE=InnoDB") do |t|
      t.integer :country_id, :null => false	    # foreign key
      t.string :code, :limit => 3				# ICAO code
      t.string :name, :null => false, :limit => 45

      t.timestamps
    end
    foreign_key(:airlines, :country_id, :countries)
  end

  def self.down
    drop_table :airlines
  end
end

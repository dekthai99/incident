require "migration_helpers"

class CreateEvents < ActiveRecord::Migration
  extend MigrationHelpers
	
  def self.up
    create_table (:events, :options => "ENGINE=InnoDB") do |t|
      t.integer :airport_id, :null => false			#foreing key
      t.integer :location_id, :null => false		#foreing key
      t.integer :person_id, :null => false			#foreing key
      t.integer :sky_id, :null => false				#foreing key
      t.integer :visibility_id, :null => false		#foreing key
      t.integer :percipitation_id, :null => false	#foreing key
      t.text :details
      t.column :start_date, :bigint, :null => false	#date and time > 2035
      t.colomn :end_date, :bigint, :null => false	#date and time > 2035
      t.column :created_at, :bigint
      t.column :updated_at, :bigint
    end
  end

  def self.down
  	foreign_key(:events, :airport_id, :airports)
  	foreign_key(:events, :location_id, :locations)  	
  	foreign_key(:events, :person_id, :people)
  	foreign_key(:events, :sky_id, :skies)
  	foreign_key(:events, :visibility_id, :visibilities)
  	foreign_key(:events, :percipitation_id, :percipitation)
    drop_table :events
  end
end

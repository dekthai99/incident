require "migration_helpers"

class CreatePeople < ActiveRecord::Migration
  extend MigrationHelpers
  
  def self.up
    create_table (:people, :options => "ENGINE=InnoDB") do |t|
      t.string :occupation_id				#foreign key
      t.string :first, :limit => 45
      t.string :last, :limit => 45
      t.string :gender, :limit => 6
      t.string :phone, :limit => 45
      t.string :email

      t.timestamps
    end
  end

  def self.down
  	foreign_key(:people, :occupation_id, :occupations)
    drop_table :people
  end
end

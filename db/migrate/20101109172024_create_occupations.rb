class CreateOccupations < ActiveRecord::Migration
  def self.up
    create_table (:occupations, :options => "ENGINE=InnoDB") do |t|
      t.string :name, :null => false, :limit => 45
      t.string :others, :limit => 45

      t.timestamps
    end
  end

  def self.down
    drop_table :occupations
  end
end

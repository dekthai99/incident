class CreateCountries < ActiveRecord::Migration
  def self.up
    create_table (:countries, :options => "ENGINE=InnoDB") do |t|
      t.string :code, :null => false, :limit => 2
      t.string :name, :null => false, :limit => 45

      t.timestamps
    end
  end

  def self.down
    drop_table :countries
  end
end

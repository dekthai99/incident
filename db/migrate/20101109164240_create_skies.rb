class CreateSkies < ActiveRecord::Migration
  def self.up
    create_table (:skies, :options => "ENGINE=InnoDB") do |t|
      t.string :condition, :null => false, :limit => 45
      t.string :description, :limit => 100

      t.timestamps
    end
  end

  def self.down
    drop_table :skies
  end
end

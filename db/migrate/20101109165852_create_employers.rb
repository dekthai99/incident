class CreateEmployers < ActiveRecord::Migration
  def self.up
    create_table (:employers, :options => "ENGINE=InnoDB") do |t|
      t.string :name, :null => false, :limit => 45
      t.string :others, :limit => 45

      t.timestamps
    end
  end

  def self.down
    drop_table :employers
  end
end

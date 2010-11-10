class CreateInjuries < ActiveRecord::Migration
  def self.up
    create_table (:injuries, :options => "ENGINE=InnoDB") do |t|
      t.string :condition, :null => false, :limit => 45
      t.string :description, :limit => 100
      t.string :others

      t.timestamps
    end
  end

  def self.down
    drop_table :injuries
  end
end

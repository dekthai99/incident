class CreateTimelosts < ActiveRecord::Migration
  def self.up
    create_table (:timelosts, :options => "ENGINE=InnoDB") do |t|
      t.string :condition, :null => false, :limit => 45
      t.string :description, :limit => 100
      t.string :others, :limit => 45

      t.timestamps
    end
  end

  def self.down
    drop_table :timelosts
  end
end

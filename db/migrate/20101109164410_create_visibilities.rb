class CreateVisibilities < ActiveRecord::Migration
  def self.up
    create_table (:visibilities, :options => "ENGINE=InnoDB") do |t|
      t.string :condition, :null => false
      t.string :description, :limit => 100

      t.timestamps
    end
  end

  def self.down
    drop_table :visibilities
  end
end

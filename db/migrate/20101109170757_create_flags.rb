class CreateFlags < ActiveRecord::Migration
  def self.up
    create_table (:flags, :options => "ENGINE=InnoDB") do |t|
      t.string :code, :null => false, :limit => 10

      t.timestamps
    end
  end

  def self.down
    drop_table :flags
  end
end

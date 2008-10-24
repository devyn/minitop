class CreateParts < ActiveRecord::Migration
  def self.up
    create_table :parts do |t|
      t.integer :id, :null => false
      t.string :name
      t.text :template
      
      t.timestamps
    end
  end

  def self.down
    drop_table :parts
  end
end

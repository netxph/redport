class CreatePhotographs < ActiveRecord::Migration
  def self.up
    create_table :photographs do |t|
      t.string :code
      t.string :name
      t.string :description
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :photographs
  end
end

class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :url

      t.timestamps
    end
  end
end

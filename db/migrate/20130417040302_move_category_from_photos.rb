class MoveCategoryFromPhotos < ActiveRecord::Migration
  def up
    remove_column :photos, :category
    add_column :photos, :category_id, :integer
  end

  def down
    add_column :photos, :category, :string
    remove_column :photos, :category_id
  end
end

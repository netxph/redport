class CreateBlogs < ActiveRecord::Migration
  def self.up
    create_table :blogs do |t|
      t.string :title
      t.date :create_date
      t.date :modified_date
      t.text :body
      t.string :author
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :blogs
  end
end

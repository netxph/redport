class CreateFeedbacks < ActiveRecord::Migration
  def self.up
    create_table :feedbacks do |t|
      t.string :email
      t.string :content

      t.timestamps
    end
  end

  def self.down
    drop_table :feedbacks
  end
end

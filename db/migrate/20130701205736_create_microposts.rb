class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id
      t.string :title
      t.string :year

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at, :year, :title]
  end
end

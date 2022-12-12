class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.text :title
      t.string :body
      t.integer :prompt_id
      t.integer :user_id

      t.timestamps
    end
  end
end

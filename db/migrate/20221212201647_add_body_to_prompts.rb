class AddBodyToPrompts < ActiveRecord::Migration[6.0]
  def change
    add_column :prompts, :body, :text, default: ""
  end
end

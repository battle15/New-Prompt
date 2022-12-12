class AddTitleToPrompts < ActiveRecord::Migration[6.0]
  def change
    add_column :prompts, :title, :text, default: ""
  end
end

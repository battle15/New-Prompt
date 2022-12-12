class AddUserIdToPrompts < ActiveRecord::Migration[6.0]
  def change
    add_column :prompts, :user_id, :integer
  end
end

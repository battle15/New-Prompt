class AddStoryIdToPrompts < ActiveRecord::Migration[6.0]
  def change
    add_column :prompts, :story_id, :integer
  end
end

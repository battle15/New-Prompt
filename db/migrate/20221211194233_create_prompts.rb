class CreatePrompts < ActiveRecord::Migration[6.0]
  def change
    create_table :prompts do |t|
      t.string :location
      t.string :species
      t.string :item
      t.text :full_prompt

      t.timestamps
    end
  end
end

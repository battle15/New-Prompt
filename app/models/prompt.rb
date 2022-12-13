# == Schema Information
#
# Table name: prompts
#
#  id          :integer          not null, primary key
#  body        :text             default("")
#  full_prompt :text
#  item        :string
#  location    :string
#  species     :string
#  title       :text             default("")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  story_id    :integer
#  user_id     :integer
#
class Prompt < ApplicationRecord
  belongs_to(:users, { :required => true, :class_name => "User", :foreign_key => "user_id" })
  has_many(:stories, {:class_name => "Story", :foreign_key => "prompt_id" })
end

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
#  user_id     :integer
#
class Prompt < ApplicationRecord
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
end

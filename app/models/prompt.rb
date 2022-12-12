# == Schema Information
#
# Table name: prompts
#
#  id          :integer          not null, primary key
#  full_prompt :text
#  item        :string
#  location    :string
#  species     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class Prompt < ApplicationRecord
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
end

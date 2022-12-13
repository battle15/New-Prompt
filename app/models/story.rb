# == Schema Information
#
# Table name: stories
#
#  id         :integer          not null, primary key
#  body       :string
#  title      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  prompt_id  :integer
#  user_id    :integer
#
class Story < ApplicationRecord

  belongs_to(:users, { :required => true, :class_name => "User", :foreign_key => "user_id" })

  belongs_to(:prompts, { :class_name => "Prompt", :foreign_key => "prompt_id", :dependent => :destroy })
end

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
end

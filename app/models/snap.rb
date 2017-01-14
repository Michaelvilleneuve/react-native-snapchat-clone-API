# == Schema Information
#
# Table name: snaps
#
#  id           :integer          not null, primary key
#  image        :text
#  recipient_id :integer
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Snap < ApplicationRecord
  belongs_to :user
  belongs_to :recipient, class_name: "User"
end
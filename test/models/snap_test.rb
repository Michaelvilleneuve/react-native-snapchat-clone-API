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

require 'test_helper'

class SnapTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

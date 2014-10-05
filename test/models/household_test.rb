# == Schema Information
#
# Table name: households
#
#  id            :integer          not null, primary key
#  created_at    :datetime
#  updated_at    :datetime
#  name          :string(255)
#  mobile_number :string(255)
#  email         :string(255)
#

require 'test_helper'

class HouseholdTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

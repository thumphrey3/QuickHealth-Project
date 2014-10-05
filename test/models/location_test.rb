# == Schema Information
#
# Table name: locations
#
#  id           :integer          not null, primary key
#  created_at   :datetime
#  updated_at   :datetime
#  name         :string(255)
#  province     :string(255)
#  country      :string(255)
#  household_id :integer
#

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

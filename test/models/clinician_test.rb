# == Schema Information
#
# Table name: clinicians
#
#  id            :integer          not null, primary key
#  created_at    :datetime
#  updated_at    :datetime
#  national_id   :string(255)
#  first_name    :string(255)
#  last_name     :string(255)
#  sex           :string(255)
#  age           :integer
#  role          :string(255)
#  organization  :string(255)
#  email         :string(255)
#  mobile_number :string(255)
#  location      :string(255)
#

require 'test_helper'

class ClinicianTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

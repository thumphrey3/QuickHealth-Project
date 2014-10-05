# == Schema Information
#
# Table name: cases
#
#  id            :integer          not null, primary key
#  created_at    :datetime
#  updated_at    :datetime
#  urgency_level :integer
#  status        :string(255)
#  notes         :text
#  patient_id    :integer
#

require 'test_helper'

class CaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

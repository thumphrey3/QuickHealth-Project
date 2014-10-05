# == Schema Information
#
# Table name: patients
#
#  id           :integer          not null, primary key
#  created_at   :datetime
#  updated_at   :datetime
#  national_id  :string(255)
#  first_name   :string(255)
#  last_name    :string(255)
#  sex          :string(255)
#  age          :integer
#  language     :string(255)
#  medication   :text
#  conditions   :text
#  household_id :integer
#

class Patient < ActiveRecord::Base
	belongs_to :household
	has_many :cases

end

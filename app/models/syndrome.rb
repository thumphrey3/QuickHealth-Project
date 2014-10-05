# == Schema Information
#
# Table name: syndromes
#
#  id                 :integer          not null, primary key
#  created_at         :datetime
#  updated_at         :datetime
#  name               :string(255)
#  image              :string(255)
#  description        :string(255)
#  text_code          :string(255)
#  severity_score     :integer
#  health_instruction :string(255)
#

class Syndrome < ActiveRecord::Base
	has_and_belongs_to_many :cases
end

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

class Household < ActiveRecord::Base
  has_many :patients
  belongs_to :location

  validates :name, :mobile_number, presence: true 

  def self.search(search)
    Household.where("name LIKE ?", "%#{search}%").first
  end
end

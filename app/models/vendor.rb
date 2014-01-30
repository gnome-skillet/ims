class Vendor < ActiveRecord::Base
	validates :name, :sid, presence: true
	validates :sid, uniqueness: true
  scope :recent, order('created_at desc')
end

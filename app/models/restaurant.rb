class Restaurant < ActiveRecord::Base
  has_many :reviews

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates_length_of :rating, :minimum => 1, :maximum => 5
  validates :description, presence: true, length: {:minimum => 6 }
end

class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :name, presence: true
  validates_length_of :rating, :minimum => 1, :maximum => 5
  validates :content, presence: true, length: { minimum: 10 }
end

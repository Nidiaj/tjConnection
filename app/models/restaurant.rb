class Restaurant < ActiveRecord::Base
  belongs_to :user  

  has_attached_file :image, styles: { medium: "300x300#>" }

  validates_attachment_file_name :image, :matches => [/.*/]#[/png\Z/, /jpeg\Z/, /gif\Z/]

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates_length_of :rating, :minimum => 1, :maximum => 5
  validates :description, presence: true, length: {:minimum => 6 }
end

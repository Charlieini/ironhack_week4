class Concert < ActiveRecord::Base
  has_many :comments
  validates :artist, presence:true
  validates :venue, presence:true
  validates :city_id, presence:true
  validates :date, presence:true
  validates :price, presence:true
  validates :description, presence:true
end

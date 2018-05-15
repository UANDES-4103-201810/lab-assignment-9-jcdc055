class Movie < ApplicationRecord
  has_many :actors , :through => :actormovie
  belongs_to :director
  has_many :categories
  has_one :address
end

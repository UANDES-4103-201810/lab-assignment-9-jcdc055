class Actor < ApplicationRecord
  has_many :movies , :through => :actormovie

end

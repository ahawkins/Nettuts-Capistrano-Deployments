class Book < ActiveRecord::Base
  has_many :comments
end

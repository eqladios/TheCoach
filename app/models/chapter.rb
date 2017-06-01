class Chapter < ApplicationRecord
  has_many :topics, dependent: :destroy
end

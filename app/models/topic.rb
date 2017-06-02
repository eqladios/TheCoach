class Topic < ApplicationRecord
  belongs_to :chapter
  has_many :slides, dependent: :destroy
  #Override
  def to_param
    "#{id}-#{title.parameterize}"
  end
end

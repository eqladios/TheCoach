class Topic < ApplicationRecord
  belongs_to :chapter
  #Override
  def to_param
    "#{id}-#{title.parameterize}"
  end
end

class Slide < ApplicationRecord
  resort!
  belongs_to :topic

  def siblings
    # Tree contains only slides from my own topic
    self.topic.slides
  end
end

class AddChapterToTopic < ActiveRecord::Migration[5.0]
  def change
    add_reference :topics, :chapter, foreign_key: true
  end
end

class RemoveChapterIdFromTopic < ActiveRecord::Migration[5.0]
  def change
    remove_column :topics, :chapterID, :integer
  end
end

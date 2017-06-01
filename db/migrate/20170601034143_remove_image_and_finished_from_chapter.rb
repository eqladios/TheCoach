class RemoveImageAndFinishedFromChapter < ActiveRecord::Migration[5.0]
  def change
    remove_column :chapters, :image, :string
    remove_column :chapters, :finished, :boolean
  end
end

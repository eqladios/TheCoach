class RemoveHtmlContentFromTopic < ActiveRecord::Migration[5.0]
  def change
    remove_column :topics, :htmlContent, :text
  end
end

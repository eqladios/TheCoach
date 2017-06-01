class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.integer :number
      t.string :title
      t.text :htmlContent
      t.integer :chapterID

      t.timestamps
    end
  end
end

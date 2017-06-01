class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.integer :number
      t.string :name
      t.string :image
      t.boolean :finished

      t.timestamps
    end
  end
end

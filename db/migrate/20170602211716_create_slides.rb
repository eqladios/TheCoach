class CreateSlides < ActiveRecord::Migration[5.0]
  def change
    create_table :slides do |t|
      t.text :htmlBody
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end

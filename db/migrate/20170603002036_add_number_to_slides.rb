class AddNumberToSlides < ActiveRecord::Migration[5.0]
  def change
    add_column :slides, :number, :integer
  end
end

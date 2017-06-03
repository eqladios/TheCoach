# Migration to add the necessary fields to a resorted model
class AddResortFieldsToSlides < ActiveRecord::Migration
  # Adds Resort fields, next_id and first, and indexes to a given model
  def self.up
    add_column :slides, :next_id, :integer
    add_column :slides, :first,   :boolean
    add_index :slides, :next_id
    add_index :slides, :first
  end

  # Removes Resort fields
  def self.down
    remove_column :slides, :next_id
    remove_column :slides, :first
  end
end


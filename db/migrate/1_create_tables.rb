require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateTables < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      # t.has_many :roles
      t.string  :name
      t.timestamps
    end

    create_table :roles do |t|
      t.belongs_to :actors
      t.belongs_to :movies
      t.string :title
      t.timestamps
    end

    create_table :movies do |t|
      # t.has_many :roles
      t.string :name
      t.timestamps
    end
  end
end
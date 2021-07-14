# frozen_string_literal: true

# Creates a migration for installer files.
# Each installer contains one lua file, name, path id, description
class CreateInstallers < ActiveRecord::Migration[6.1]
  def change
    create_table :installers do |t|
      t.integer :path
      t.string :name
      t.string :description
      t.text :body

      t.timestamps
    end
  end
end

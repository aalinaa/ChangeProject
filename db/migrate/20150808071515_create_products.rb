class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.string :img
      t.integer :group
      t.integer :subgroup
      t.belongs_to :user, foreign_key: true

      t.timestamps null: false
    end
  end
end

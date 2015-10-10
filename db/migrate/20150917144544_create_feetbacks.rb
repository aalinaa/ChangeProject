class CreateFeetbacks < ActiveRecord::Migration
  def change
    create_table :feetbacks do |t|
      t.text :text
      t.belongs_to :user, index: true, foreign_key: true
      t.integer :mark

      t.timestamps null: false
    end
  end
end

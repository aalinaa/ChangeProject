class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :customer_id
      t.integer :owner_id
      t.belongs_to :product, foreign_key: true
      t.integer :status, default: 0 
      t.boolean :new, default: true

      t.timestamps null: false
    end
  end
end

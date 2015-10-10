class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.belongs_to :country, foreign_key: true
      t.string :img
      t.boolean :registred
      t.string :registry_hash
      t.string :pass_hash     
      t.integer :registry_time
      t.integer :pass_time
      

      t.timestamps null: false
    end
  end
end

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :gpa
      t.integer :weight
      t.integer :height
      t.integer :athletism
      t.integer :footwork
      t.boolean :admin, :default => false

      t.timestamps null: false
    end
  end
end

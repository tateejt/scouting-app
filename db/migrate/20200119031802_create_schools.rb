class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :min_gpa
      t.integer :athletism_rating
      t.integer :footwork_rating
      t.integer :min_sprint

      t.timestamps null: false
    end
  end
end

class CreateScholarships < ActiveRecord::Migration[6.0]
  def change
    create_table :scholarships do |t|
      t.integer :user_id
      t.integer :school_id
    end
  end
end

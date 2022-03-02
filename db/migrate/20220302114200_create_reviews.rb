class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table 'reviews' do |t|
      t.integer 'reviewer_id', null: false
      t.integer 'reviewee_id', null: false
      t.text :comment
      t.integer :rating

      t.timestamps null: false
    end

    add_index :reviews, :reviewer_id
    add_index :reviews, :reviewee_id
    add_index :reviews, [:reviewer_id, :reviewee_id], unique: true
  end
end

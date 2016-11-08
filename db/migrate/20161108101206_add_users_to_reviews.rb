class AddUsersToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :reviewer_id, :integer
    add_column :reviews, :reviewee_id, :integer
  end
end

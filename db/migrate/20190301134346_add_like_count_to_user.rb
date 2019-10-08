class AddLikeCountToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :like_count, :integer ,default:0
  end
end

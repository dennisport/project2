class ChangeCreateFollows < ActiveRecord::Migration[6.0]
  def change
    rename_column :follows, :fellower_id, :follower_id
  end
end

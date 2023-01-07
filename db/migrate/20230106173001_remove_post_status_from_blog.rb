class RemovePostStatusFromBlog < ActiveRecord::Migration[5.2]
  def change
    remove_column :blogs, :status, :integer
  end
end

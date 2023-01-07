class AddPostStatusToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :status, :integer, default: 0
#check again that this still doesn't update to the schema file

  end
end

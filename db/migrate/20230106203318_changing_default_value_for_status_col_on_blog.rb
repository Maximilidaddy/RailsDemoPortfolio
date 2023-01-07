class ChangingDefaultValueForStatusColOnBlog < ActiveRecord::Migration[5.2]
  def change
    change_column :blogs, :status, :integer, default: 0
  end
end

class AddThumbImageToPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :thumb_image, :string
  end
end

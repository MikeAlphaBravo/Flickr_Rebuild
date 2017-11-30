class AddColumnsToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column(:photos, :title, :string)
    add_column(:photos, :user_id, :integer)
    add_column(:photos, :image, :string)
  end
end

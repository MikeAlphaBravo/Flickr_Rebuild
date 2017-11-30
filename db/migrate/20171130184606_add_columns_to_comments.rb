class AddColumnsToComments < ActiveRecord::Migration[5.1]
  def change
    add_column(:comments, :text, :string)
    add_column(:comments, :photo_id, :integer)
    add_column(:comments, :user_id, :integer)
  end
end

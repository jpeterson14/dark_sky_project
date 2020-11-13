class AddPasswordDigestToVisitor < ActiveRecord::Migration[6.0]
  def change
    add_column :visitors, :password_digest, :string
    remove_column :visitors, :password
  end
end

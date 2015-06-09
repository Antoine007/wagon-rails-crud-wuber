class AddEmailToDriver < ActiveRecord::Migration
  def change
    add_column :drivers, :email, :string
    add_index  :drivers, :email, unique: true
  end
end

class AddRateToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :rate, :float, null: false, default: 0
  end
end

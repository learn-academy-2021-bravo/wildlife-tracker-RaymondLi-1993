class DropTable < ActiveRecord::Migration[6.1]
  def change
    change_column :trackings, :longitude, :string
    change_column :trackings, :latitude, :string
  end
end

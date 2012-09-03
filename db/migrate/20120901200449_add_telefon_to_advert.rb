class AddTelefonToAdvert < ActiveRecord::Migration
  def change
    add_column :adverts, :telefon, :string
  end
end

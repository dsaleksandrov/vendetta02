class AddMoneyIsModeratedToAdvert < ActiveRecord::Migration
  def change
    add_column :adverts, :money, :string
    add_column :adverts, :isModerated, :boolean
  end
end

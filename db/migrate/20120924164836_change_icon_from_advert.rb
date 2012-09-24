class ChangeIconFromAdvert < ActiveRecord::Migration
  def up
  	 change_table :adverts do |t|
      t.change :icon, :string
  end
end

  def down
  	 change_table :adverts do |t|
      t.change :icon, :binary
  end
end
end

class ChangeAdvertLogotype < ActiveRecord::Migration
    def up
  	 change_table :adverts do |t|
      t.change :logo, :string
    end
  end

  def down
  	change_table :adverts do |t|
      t.change :logo, :binary
  end
  end
end

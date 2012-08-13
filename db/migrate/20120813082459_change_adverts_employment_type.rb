class ChangeAdvertsEmploymentType < ActiveRecord::Migration
  def up
  	 change_table :adverts do |t|
      t.change :employment_type, :string
    end
  end

  def down
  	change_table :adverts do |t|
      t.change :employment_type, :integer
  end
  end

end

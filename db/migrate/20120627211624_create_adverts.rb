class CreateAdverts < ActiveRecord::Migration
  def self.up
    create_table :adverts do |t|
      t.string :email
      t.integer :employment_type
      t.text :town_country
      t.string :work_category
      t.text :base_demands
      t.text :instructions
      t.references :company

      t.timestamps
    end
  end

  def self.down
    drop_table :adverts
  end
end

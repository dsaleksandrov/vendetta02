class CreateAdverts < ActiveRecord::Migration
  def self.up
  create_table :adverts do |t|
      t.string :email
      t.string :employment_type
      t.text :town_country
      t.string :work_category
      t.text :base_demands
      t.text :instructions
      t.string :company
      t.string :money
      t.boolean :isModerated
      t.string :telefon
      t.string :name
      t.text :desc
      t.string :site
      t.binary :logo
      t.binary :icon
      t.string :agent_name
      t.references :user

      t.timestamps
    end
   add_index :adverts, :user_id
  end

  def self.down
    drop_table :adverts
  end
end

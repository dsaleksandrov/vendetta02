class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :email
      t.integer :employment_type
      t.text :town_country
      t.string :work_category
      t.text :base_demands
      t.text :instructions
      t.string :Company
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

 



end

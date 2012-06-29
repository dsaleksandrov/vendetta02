class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.text :desc
      t.string :site
      t.binary :logo
      t.binary :icon
      t.string :agent_name
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end

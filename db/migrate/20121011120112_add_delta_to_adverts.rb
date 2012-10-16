class AddDeltaToAdverts < ActiveRecord::Migration
  def change
    add_column :adverts, :delta, :boolean, :default => true,
    :null => false
  end
end

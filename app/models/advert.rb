class Advert < ActiveRecord::Base
  belongs_to :user
  attr_accessible :Company, :agent_name, :base_demands, :desc, :email, :employment_type, :icon, :instructions, :logo, :name, :site, :town_country, :work_category
   

  define_index do
    #indexes :company, :sortable => true
    #indexes [company, work_category], :as => :desc_advert
    indexes :id
    has id
  end



end

class Advert < ActiveRecord::Base
  belongs_to :user
  attr_accessible :company, :agent_name, :base_demands, :desc, :email, :employment_type, :icon, :instructions, :logo, :name, :site, :town_country, 
  :work_category,:telefon,:money,:isModerated,:created_at
  
  mount_uploader :logo, ImageUploader
  define_index do
   indexes [work_category,email,town_country], as =>search
   indexes town_country, :as => :town_country
   indexes employment_type, :as => :employment_type

   has created_at
   
  end



end

# coding: utf-8
class AdvertsController < ApplicationController
  # GET /adverts
  # GET /adverts.json
def index
condition=nil
fulltime = params[:fulltime]
parttime = params[:parttime]
remote = params[:remote]
forone = params[:forone]

if !fulltime.nil? && !fulltime.blank?
condition = fulltime
end

if !condition.nil? && !condition.blank?
      if !parttime.nil? && !parttime.blank?
        condition = condition + " | parttime"
      end
else
      if !parttime.nil? && !parttime.blank?
        condition = "parttime"
      end
end

 
if !condition.nil? && !condition.blank?
      if !remote.nil? && !remote.blank?
        condition = condition + " | remote"
      end
else
      if !remote.nil? && !remote.blank?
        condition = "remote"
      end
end




if !condition.nil? && !condition.blank?
      if !forone.nil? && !forone.blank?
        condition = condition + " | forone"
      end
else
      if !forone.nil? && !forone.blank?
        condition = "forone"
      end
end






town=  params[:town]
 if !town.nil? && !town.blank?
      if condition.nil?
        @adverts = Advert.search params[:search], :conditions => {:town_country => params[:town]}
      else
        @adverts = Advert.search params[:search], :conditions => {:town_country => params[:town],:employment_type=>condition}
      end
     

 else
   if condition.nil?      
    @adverts = Advert.search params[:search]
  else
    @adverts = Advert.search params[:search], :conditions => {:employment_type=>condition}
  end
end


       respond_to do |format|
        format.html
        format.js
     end
 end


def moderation
@advert = Advert.find(params[:id])
end




# GET /adverts/preview
# GET /adverts/preview.json
def preview
  if(!params.has_key?(:advert)) 
       redirect_to :action => "index"
   else
    @advert = Advert.new(params[:advert])
    @advert.user=User.find(1);
      unless params[:employment_type].nil?
        @advert.employment_type=params[:employment_type]
       end
       unless params[:base_demands].nil?
        @advert.base_demands=params[:base_demands]
       end

    logger.info("Preview page begin load")
    respond_to do |format|
     # if @advert.save
      #  format.html { redirect_to @advert, notice: 'Advert was successfully created.' }
        #format.json { render json: @advert, status: :created, location: @advert }
     # else
        format.html { render action: "preview" }
        format.json  
     # end
    end

  end
    
 end



 def backtonew
  @advert = Advert.new (params[:advert])
   respond_to do |format|
     # if @advert.save
      #  format.html { redirect_to @advert, notice: 'Advert was successfully created.' }
        #format.json { render json: @advert, status: :created, location: @advert }
     # else
        format.html { render  "new" }
        format.json  
  
     # end
    end
 end

 

  # GET /adverts/1
  # GET /adverts/1.json
  def show
    @advert = Advert.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @advert }
    end
  end

  # GET /adverts/new
  # GET /adverts/new.json
  def new

if !anyone_signed_in?
         deny_access
       else
    @advert = Advert.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @advert }
    end
  end
  end

  # GET /adverts/1/edit
  def edit
    @advert = Advert.find(params[:id])
  end

  # POST /adverts
  # POST /adverts.json
  def create
 
    @advert = Advert.new(params[:advert])
    @advert.user=User.find(1);

  

 
      unless params[:employment_type].nil?
        @advert.employment_type=params[:employment_type]
       end
       unless params[:base_demands].nil?
        @advert.base_demands=params[:base_demands]
       end

    respond_to do |format|
      if @advert.save
          if !@advert.logo.nil? && !@advert.logo.path.nil?
          @advert.icon=@advert.logo.url
          @advert.save
          end
        format.html { render action: "moderation" }
      else
        format.html { render "new" }
        format.json  
      end
    end
  end

  # PUT /adverts/1
  # PUT /adverts/1.json
  def update
    @advert = Advert.find(params[:id])

    respond_to do |format|
      if @advert.update_attributes(params[:advert])
        format.html { redirect_to @advert, notice: 'Advert was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @advert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adverts/1
  # DELETE /adverts/1.json
  def destroy
    @advert = Advert.find(params[:id])
    @advert.destroy

    respond_to do |format|
      format.html { redirect_to adverts_url }
      format.json { head :no_content }
    end
  end
end

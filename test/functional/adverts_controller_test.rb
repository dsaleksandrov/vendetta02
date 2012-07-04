require 'test_helper'

class AdvertsControllerTest < ActionController::TestCase
  setup do
    @advert = adverts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adverts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advert" do
    assert_difference('Advert.count') do
      post :create, advert: { Company: @advert.Company, agent_name: @advert.agent_name, base_demands: @advert.base_demands, desc: @advert.desc, email: @advert.email, employment_type: @advert.employment_type, icon: @advert.icon, instructions: @advert.instructions, logo: @advert.logo, name: @advert.name, site: @advert.site, town_country: @advert.town_country, work_category: @advert.work_category }
    end

    assert_redirected_to advert_path(assigns(:advert))
  end

  test "should show advert" do
    get :show, id: @advert
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advert
    assert_response :success
  end

  test "should update advert" do
    put :update, id: @advert, advert: { Company: @advert.Company, agent_name: @advert.agent_name, base_demands: @advert.base_demands, desc: @advert.desc, email: @advert.email, employment_type: @advert.employment_type, icon: @advert.icon, instructions: @advert.instructions, logo: @advert.logo, name: @advert.name, site: @advert.site, town_country: @advert.town_country, work_category: @advert.work_category }
    assert_redirected_to advert_path(assigns(:advert))
  end

  test "should destroy advert" do
    assert_difference('Advert.count', -1) do
      delete :destroy, id: @advert
    end

    assert_redirected_to adverts_path
  end
end

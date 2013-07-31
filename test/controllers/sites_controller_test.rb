require 'test_helper'

class SitesControllerTest < ActionController::TestCase
  setup do
    @site = FactoryGirl.create(:site)
    user = FactoryGirl.create(:user)
    sign_in user
  end

  # Need to have user signed in. 

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site" do
    assert_difference('Site.count') do
      post :create, site: { interval: @site.interval, url: @site.url }
    end

    assert_redirected_to site_path(assigns(:site))
  end

  test "should show site" do
    get :show, id: @site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site
    assert_response :success
  end

  test "should update site" do
    patch :update, id: @site.id, site: { interval: @site.interval, url: @site.url, id: @site.id }
    assert_redirected_to site_path(assigns(:site))
  end

  test "should destroy site" do
    assert_difference('Site.count', -1) do
      delete :destroy, id: @site
    end

    assert_redirected_to sites_path
  end
end

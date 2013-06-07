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
      post :create, advert: { all_price: @advert.all_price, area: @advert.area, category_id: @advert.category_id, city_id: @advert.city_id, description: @advert.description, district_id: @advert.district_id, estate_type_id: @advert.estate_type_id, floor: @advert.floor, house: @advert.house, image: @advert.image, layout: @advert.layout, living: @advert.living, operation_type_id: @advert.operation_type_id, price: @advert.price, region_id: @advert.region_id, room_number: @advert.room_number, state: @advert.state, street_id: @advert.street_id, title: @advert.title, video: @advert.video }
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
    put :update, id: @advert, advert: { all_price: @advert.all_price, area: @advert.area, category_id: @advert.category_id, city_id: @advert.city_id, description: @advert.description, district_id: @advert.district_id, estate_type_id: @advert.estate_type_id, floor: @advert.floor, house: @advert.house, image: @advert.image, layout: @advert.layout, living: @advert.living, operation_type_id: @advert.operation_type_id, price: @advert.price, region_id: @advert.region_id, room_number: @advert.room_number, state: @advert.state, street_id: @advert.street_id, title: @advert.title, video: @advert.video }
    assert_redirected_to advert_path(assigns(:advert))
  end

  test "should destroy advert" do
    assert_difference('Advert.count', -1) do
      delete :destroy, id: @advert
    end

    assert_redirected_to adverts_path
  end
end

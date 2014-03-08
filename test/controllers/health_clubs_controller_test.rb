require 'test_helper'

class HealthClubsControllerTest < ActionController::TestCase
  setup do
    @health_club = health_clubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:health_clubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create health_club" do
    assert_difference('HealthClub.count') do
      post :create, health_club: { name: @health_club.name }
    end

    assert_redirected_to health_club_path(assigns(:health_club))
  end

  test "should show health_club" do
    get :show, id: @health_club
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @health_club
    assert_response :success
  end

  test "should update health_club" do
    patch :update, id: @health_club, health_club: { name: @health_club.name }
    assert_redirected_to health_club_path(assigns(:health_club))
  end

  test "should destroy health_club" do
    assert_difference('HealthClub.count', -1) do
      delete :destroy, id: @health_club
    end

    assert_redirected_to health_clubs_path
  end
end

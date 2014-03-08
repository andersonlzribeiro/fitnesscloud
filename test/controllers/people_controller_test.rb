require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { address: @person.address, adress_number: @person.adress_number, birth_date: @person.birth_date, business_phone: @person.business_phone, city_id: @person.city_id, cpf: @person.cpf, district: @person.district, email: @person.email, emergency_contact_1: @person.emergency_contact_1, emergency_contact_1_phone: @person.emergency_contact_1_phone, emergency_contact_2: @person.emergency_contact_2, emergency_contact_2_phone: @person.emergency_contact_2_phone, gender: @person.gender, health_insurance_provider: @person.health_insurance_provider, mobile: @person.mobile, name: @person.name, observation: @person.observation, phone: @person.phone, rg: @person.rg, zipcode: @person.zipcode }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    patch :update, id: @person, person: { address: @person.address, adress_number: @person.adress_number, birth_date: @person.birth_date, business_phone: @person.business_phone, city_id: @person.city_id, cpf: @person.cpf, district: @person.district, email: @person.email, emergency_contact_1: @person.emergency_contact_1, emergency_contact_1_phone: @person.emergency_contact_1_phone, emergency_contact_2: @person.emergency_contact_2, emergency_contact_2_phone: @person.emergency_contact_2_phone, gender: @person.gender, health_insurance_provider: @person.health_insurance_provider, mobile: @person.mobile, name: @person.name, observation: @person.observation, phone: @person.phone, rg: @person.rg, zipcode: @person.zipcode }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end

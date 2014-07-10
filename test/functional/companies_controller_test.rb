require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { Agreement_conditions: @company.Agreement_conditions, Plan_description: @company.Plan_description, State: @company.State, account_number: @company.account_number, account_type: @company.account_type, address2: @company.address2, address: @company.address, bank: @company.bank, city: @company.city, contact_name: @company.contact_name, country: @company.country, email: @company.email, phone: @company.phone, website: @company.website }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    put :update, id: @company, company: { Agreement_conditions: @company.Agreement_conditions, Plan_description: @company.Plan_description, State: @company.State, account_number: @company.account_number, account_type: @company.account_type, address2: @company.address2, address: @company.address, bank: @company.bank, city: @company.city, contact_name: @company.contact_name, country: @company.country, email: @company.email, phone: @company.phone, website: @company.website }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end

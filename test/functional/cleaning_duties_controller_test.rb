require 'test_helper'

class CleaningDutiesControllerTest < ActionController::TestCase
  setup do
    @cleaning_duty = cleaning_duties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cleaning_duties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cleaning_duty" do
    assert_difference('CleaningDuty.count') do
      post :create, cleaning_duty: @cleaning_duty.attributes
    end

    assert_redirected_to cleaning_duty_path(assigns(:cleaning_duty))
  end

  test "should show cleaning_duty" do
    get :show, id: @cleaning_duty.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cleaning_duty.to_param
    assert_response :success
  end

  test "should update cleaning_duty" do
    put :update, id: @cleaning_duty.to_param, cleaning_duty: @cleaning_duty.attributes
    assert_redirected_to cleaning_duty_path(assigns(:cleaning_duty))
  end

  test "should destroy cleaning_duty" do
    assert_difference('CleaningDuty.count', -1) do
      delete :destroy, id: @cleaning_duty.to_param
    end

    assert_redirected_to cleaning_duties_path
  end
end

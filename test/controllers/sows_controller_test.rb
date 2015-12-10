require 'test_helper'

class SowsControllerTest < ActionController::TestCase
  setup do
    @sow = sows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sow" do
    assert_difference('Sow.count') do
      post :create, sow: { begin_date: @sow.begin_date, bill_rate: @sow.bill_rate, client_id: @sow.client_id, end_date: @sow.end_date, project_id: @sow.project_id, sow_hours: @sow.sow_hours }
    end

    assert_redirected_to sow_path(assigns(:sow))
  end

  test "should show sow" do
    get :show, id: @sow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sow
    assert_response :success
  end

  test "should update sow" do
    patch :update, id: @sow, sow: { begin_date: @sow.begin_date, bill_rate: @sow.bill_rate, client_id: @sow.client_id, end_date: @sow.end_date, project_id: @sow.project_id, sow_hours: @sow.sow_hours }
    assert_redirected_to sow_path(assigns(:sow))
  end

  test "should destroy sow" do
    assert_difference('Sow.count', -1) do
      delete :destroy, id: @sow
    end

    assert_redirected_to sows_path
  end
end

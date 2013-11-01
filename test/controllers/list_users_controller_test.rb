require 'test_helper'

class ListUsersControllerTest < ActionController::TestCase
  setup do
    @list_user = list_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_user" do
    assert_difference('ListUser.count') do
      post :create, list_user: { task_list_id: @list_user.task_list_id, user_id: @list_user.user_id }
    end

    assert_redirected_to list_user_path(assigns(:list_user))
  end

  test "should show list_user" do
    get :show, id: @list_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @list_user
    assert_response :success
  end

  test "should update list_user" do
    patch :update, id: @list_user, list_user: { task_list_id: @list_user.task_list_id, user_id: @list_user.user_id }
    assert_redirected_to list_user_path(assigns(:list_user))
  end

  test "should destroy list_user" do
    assert_difference('ListUser.count', -1) do
      delete :destroy, id: @list_user
    end

    assert_redirected_to list_users_path
  end
end

require 'test_helper'

class DispositionsControllerTest < ActionController::TestCase
  setup do
    @disposition = dispositions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dispositions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disposition" do
    assert_difference('Disposition.count') do
      post :create, disposition: { description: @disposition.description, name: @disposition.name }
    end

    assert_redirected_to disposition_path(assigns(:disposition))
  end

  test "should show disposition" do
    get :show, id: @disposition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disposition
    assert_response :success
  end

  test "should update disposition" do
    patch :update, id: @disposition, disposition: { description: @disposition.description, name: @disposition.name }
    assert_redirected_to disposition_path(assigns(:disposition))
  end

  test "should destroy disposition" do
    assert_difference('Disposition.count', -1) do
      delete :destroy, id: @disposition
    end

    assert_redirected_to dispositions_path
  end
end

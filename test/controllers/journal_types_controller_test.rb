require 'test_helper'

class JournalTypesControllerTest < ActionController::TestCase
  setup do
    @journal_type = journal_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:journal_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create journal_type" do
    assert_difference('JournalType.count') do
      post :create, journal_type: { effect: @journal_type.effect, name: @journal_type.name }
    end

    assert_redirected_to journal_type_path(assigns(:journal_type))
  end

  test "should show journal_type" do
    get :show, id: @journal_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @journal_type
    assert_response :success
  end

  test "should update journal_type" do
    patch :update, id: @journal_type, journal_type: { effect: @journal_type.effect, name: @journal_type.name }
    assert_redirected_to journal_type_path(assigns(:journal_type))
  end

  test "should destroy journal_type" do
    assert_difference('JournalType.count', -1) do
      delete :destroy, id: @journal_type
    end

    assert_redirected_to journal_types_path
  end
end

require 'test_helper'

class AdvartismentsControllerTest < ActionController::TestCase
  setup do
    @advartisment = advartisments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advartisments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advartisment" do
    assert_difference('Advartisment.count') do
      post :create, advartisment: { category_id: @advartisment.category_id, description: @advartisment.description, employer_id: @advartisment.employer_id, expire: @advartisment.expire, published: @advartisment.published, title: @advartisment.title }
    end

    assert_redirected_to advartisment_path(assigns(:advartisment))
  end

  test "should show advartisment" do
    get :show, id: @advartisment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advartisment
    assert_response :success
  end

  test "should update advartisment" do
    patch :update, id: @advartisment, advartisment: { category_id: @advartisment.category_id, description: @advartisment.description, employer_id: @advartisment.employer_id, expire: @advartisment.expire, published: @advartisment.published, title: @advartisment.title }
    assert_redirected_to advartisment_path(assigns(:advartisment))
  end

  test "should destroy advartisment" do
    assert_difference('Advartisment.count', -1) do
      delete :destroy, id: @advartisment
    end

    assert_redirected_to advartisments_path
  end
end

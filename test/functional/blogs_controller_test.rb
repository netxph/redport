require 'test_helper'

class BlogsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog" do
    assert_difference('Blog.count') do
      post :create, :blog => { }
    end

    assert_redirected_to blog_path(assigns(:blog))
  end

  test "should show blog" do
    get :show, :id => blogs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => blogs(:one).to_param
    assert_response :success
  end

  test "should update blog" do
    put :update, :id => blogs(:one).to_param, :blog => { }
    assert_redirected_to blog_path(assigns(:blog))
  end

  test "should destroy blog" do
    assert_difference('Blog.count', -1) do
      delete :destroy, :id => blogs(:one).to_param
    end

    assert_redirected_to blogs_path
  end
end

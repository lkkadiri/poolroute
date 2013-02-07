require 'test_helper'

class PoolsControllerTest < ActionController::TestCase
  setup do
    @pool = pools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pool" do
    assert_difference('Pool.count') do
      post :create, pool: { address: @pool.address, city: @pool.city, country: @pool.country, description: @pool.description, name: @pool.name, phone: @pool.phone, state: @pool.state, zip: @pool.zip }
    end

    assert_redirected_to pool_path(assigns(:pool))
  end

  test "should show pool" do
    get :show, id: @pool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pool
    assert_response :success
  end

  test "should update pool" do
    put :update, id: @pool, pool: { address: @pool.address, city: @pool.city, country: @pool.country, description: @pool.description, name: @pool.name, phone: @pool.phone, state: @pool.state, zip: @pool.zip }
    assert_redirected_to pool_path(assigns(:pool))
  end

  test "should destroy pool" do
    assert_difference('Pool.count', -1) do
      delete :destroy, id: @pool
    end

    assert_redirected_to pools_path
  end
end

require 'test_helper'

class DactylsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dactyl = dactyls(:one)
  end

  test "should get index" do
    get dactyls_url, as: :json
    assert_response :success
  end

  test "should create dactyl" do
    assert_difference('Dactyl.count') do
      post dactyls_url, params: { dactyl: { flight: @dactyl.flight, name: @dactyl.name, size: @dactyl.size } }, as: :json
    end

    assert_response 201
  end

  test "should show dactyl" do
    get dactyl_url(@dactyl), as: :json
    assert_response :success
  end

  test "should update dactyl" do
    patch dactyl_url(@dactyl), params: { dactyl: { flight: @dactyl.flight, name: @dactyl.name, size: @dactyl.size } }, as: :json
    assert_response 200
  end

  test "should destroy dactyl" do
    assert_difference('Dactyl.count', -1) do
      delete dactyl_url(@dactyl), as: :json
    end

    assert_response 204
  end
end

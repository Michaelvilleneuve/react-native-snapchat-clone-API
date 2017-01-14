require 'test_helper'

class SnapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snap = snaps(:one)
  end

  test "should get index" do
    get snaps_url, as: :json
    assert_response :success
  end

  test "should create snap" do
    assert_difference('Snap.count') do
      post snaps_url, params: { snap: { image: @snap.image, recipient_id: @snap.recipient_id, user_id: @snap.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show snap" do
    get snap_url(@snap), as: :json
    assert_response :success
  end

  test "should update snap" do
    patch snap_url(@snap), params: { snap: { image: @snap.image, recipient_id: @snap.recipient_id, user_id: @snap.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy snap" do
    assert_difference('Snap.count', -1) do
      delete snap_url(@snap), as: :json
    end

    assert_response 204
  end
end

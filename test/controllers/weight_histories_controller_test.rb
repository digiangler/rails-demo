require "test_helper"

class WeightHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weight_history = weight_histories(:one)
  end

  test "should get index" do
    get weight_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_weight_history_url
    assert_response :success
  end

  test "should create weight_history" do
    assert_difference("WeightHistory.count") do
      post weight_histories_url, params: { weight_history: { memo: @weight_history.memo, user_id: @weight_history.user_id, weight: @weight_history.weight } }
    end

    assert_redirected_to weight_history_url(WeightHistory.last)
  end

  test "should show weight_history" do
    get weight_history_url(@weight_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_weight_history_url(@weight_history)
    assert_response :success
  end

  test "should update weight_history" do
    patch weight_history_url(@weight_history), params: { weight_history: { memo: @weight_history.memo, user_id: @weight_history.user_id, weight: @weight_history.weight } }
    assert_redirected_to weight_history_url(@weight_history)
  end

  test "should destroy weight_history" do
    assert_difference("WeightHistory.count", -1) do
      delete weight_history_url(@weight_history)
    end

    assert_redirected_to weight_histories_url
  end
end

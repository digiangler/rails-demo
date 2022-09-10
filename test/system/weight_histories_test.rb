require "application_system_test_case"

class WeightHistoriesTest < ApplicationSystemTestCase
  setup do
    @weight_history = weight_histories(:one)
  end

  test "visiting the index" do
    visit weight_histories_url
    assert_selector "h1", text: "Weight histories"
  end

  test "should create weight history" do
    visit weight_histories_url
    click_on "New weight history"

    fill_in "Memo", with: @weight_history.memo
    fill_in "User", with: @weight_history.user_id
    fill_in "Weight", with: @weight_history.weight
    click_on "Create Weight history"

    assert_text "Weight history was successfully created"
    click_on "Back"
  end

  test "should update Weight history" do
    visit weight_history_url(@weight_history)
    click_on "Edit this weight history", match: :first

    fill_in "Memo", with: @weight_history.memo
    fill_in "User", with: @weight_history.user_id
    fill_in "Weight", with: @weight_history.weight
    click_on "Update Weight history"

    assert_text "Weight history was successfully updated"
    click_on "Back"
  end

  test "should destroy Weight history" do
    visit weight_history_url(@weight_history)
    click_on "Destroy this weight history", match: :first

    assert_text "Weight history was successfully destroyed"
  end
end

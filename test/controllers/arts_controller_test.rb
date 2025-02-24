require "test_helper"

class ArtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @art = arts(:one)
  end

  test "should get index" do
    get arts_url
    assert_response :success
  end

  test "should get new" do
    get new_art_url
    assert_response :success
  end

  test "should create art" do
    assert_difference("Art.count") do
      post arts_url, params: { art: { art_name: @art.art_name, artist_id: @art.artist_id, description: @art.description, photo: @art.photo, style: @art.style, year: @art.year } }
    end

    assert_redirected_to art_url(Art.last)
  end

  test "should show art" do
    get art_url(@art)
    assert_response :success
  end

  test "should get edit" do
    get edit_art_url(@art)
    assert_response :success
  end

  test "should update art" do
    patch art_url(@art), params: { art: { art_name: @art.art_name, artist_id: @art.artist_id, description: @art.description, photo: @art.photo, style: @art.style, year: @art.year } }
    assert_redirected_to art_url(@art)
  end

  test "should destroy art" do
    assert_difference("Art.count", -1) do
      delete art_url(@art)
    end

    assert_redirected_to arts_url
  end
end

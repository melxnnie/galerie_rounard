require "test_helper"

class ArtistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist = artists(:one)
  end

  test "should get index" do
    get artists_url
    assert_response :success
  end

  test "should get new" do
    get new_artist_url
    assert_response :success
  end

  test "should create artist" do
    assert_difference("Artist.count") do
      post artists_url, params: { artist: { art_id: @artist.art_id, birth_year: @artist.birth_year, death_year: @artist.death_year, description: @artist.description, first_name: @artist.first_name, last_name: @artist.last_name, nationality: @artist.nationality, photo: @artist.photo } }
    end

    assert_redirected_to artist_url(Artist.last)
  end

  test "should show artist" do
    get artist_url(@artist)
    assert_response :success
  end

  test "should get edit" do
    get edit_artist_url(@artist)
    assert_response :success
  end

  test "should update artist" do
    patch artist_url(@artist), params: { artist: { art_id: @artist.art_id, birth_year: @artist.birth_year, death_year: @artist.death_year, description: @artist.description, first_name: @artist.first_name, last_name: @artist.last_name, nationality: @artist.nationality, photo: @artist.photo } }
    assert_redirected_to artist_url(@artist)
  end

  test "should destroy artist" do
    assert_difference("Artist.count", -1) do
      delete artist_url(@artist)
    end

    assert_redirected_to artists_url
  end
end

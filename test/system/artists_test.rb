require "application_system_test_case"

class ArtistsTest < ApplicationSystemTestCase
  setup do
    @artist = artists(:one)
  end

  test "visiting the index" do
    visit artists_url
    assert_selector "h1", text: "Artists"
  end

  test "should create artist" do
    visit artists_url
    click_on "New artist"

    fill_in "Art", with: @artist.art_id
    fill_in "Birth year", with: @artist.birth_year
    fill_in "Death year", with: @artist.death_year
    fill_in "Description", with: @artist.description
    fill_in "First name", with: @artist.first_name
    fill_in "Last name", with: @artist.last_name
    fill_in "Nationality", with: @artist.nationality
    fill_in "Photo", with: @artist.photo
    click_on "Create Artist"

    assert_text "Artist was successfully created"
    click_on "Back"
  end

  test "should update Artist" do
    visit artist_url(@artist)
    click_on "Edit this artist", match: :first

    fill_in "Art", with: @artist.art_id
    fill_in "Birth year", with: @artist.birth_year
    fill_in "Death year", with: @artist.death_year
    fill_in "Description", with: @artist.description
    fill_in "First name", with: @artist.first_name
    fill_in "Last name", with: @artist.last_name
    fill_in "Nationality", with: @artist.nationality
    fill_in "Photo", with: @artist.photo
    click_on "Update Artist"

    assert_text "Artist was successfully updated"
    click_on "Back"
  end

  test "should destroy Artist" do
    visit artist_url(@artist)
    click_on "Destroy this artist", match: :first

    assert_text "Artist was successfully destroyed"
  end
end

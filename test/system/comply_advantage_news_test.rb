require "application_system_test_case"

class ComplyAdvantageNewsTest < ApplicationSystemTestCase
  setup do
    @comply_advantage_news = comply_advantage_news(:one)
  end

  test "visiting the index" do
    visit comply_advantage_news_url
    assert_selector "h1", text: "Comply Advantage News"
  end

  test "creating a Comply advantage news" do
    visit comply_advantage_news_url
    click_on "New Comply Advantage News"

    fill_in "Company", with: @comply_advantage_news.company_id
    fill_in "Score", with: @comply_advantage_news.score
    fill_in "Story", with: @comply_advantage_news.story
    click_on "Create Comply advantage news"

    assert_text "Comply advantage news was successfully created"
    click_on "Back"
  end

  test "updating a Comply advantage news" do
    visit comply_advantage_news_url
    click_on "Edit", match: :first

    fill_in "Company", with: @comply_advantage_news.company_id
    fill_in "Score", with: @comply_advantage_news.score
    fill_in "Story", with: @comply_advantage_news.story
    click_on "Update Comply advantage news"

    assert_text "Comply advantage news was successfully updated"
    click_on "Back"
  end

  test "destroying a Comply advantage news" do
    visit comply_advantage_news_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comply advantage news was successfully destroyed"
  end
end

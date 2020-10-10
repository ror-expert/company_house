require 'test_helper'

class ComplyAdvantageNewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comply_advantage_news = comply_advantage_news(:one)
  end

  test "should get index" do
    get comply_advantage_news_index_url
    assert_response :success
  end

  test "should get new" do
    get new_comply_advantage_news_url
    assert_response :success
  end

  test "should create comply_advantage_news" do
    assert_difference('ComplyAdvantageNews.count') do
      post comply_advantage_news_index_url, params: { comply_advantage_news: { company_id: @comply_advantage_news.company_id, score: @comply_advantage_news.score, story: @comply_advantage_news.story } }
    end

    assert_redirected_to comply_advantage_news_url(ComplyAdvantageNews.last)
  end

  test "should show comply_advantage_news" do
    get comply_advantage_news_url(@comply_advantage_news)
    assert_response :success
  end

  test "should get edit" do
    get edit_comply_advantage_news_url(@comply_advantage_news)
    assert_response :success
  end

  test "should update comply_advantage_news" do
    patch comply_advantage_news_url(@comply_advantage_news), params: { comply_advantage_news: { company_id: @comply_advantage_news.company_id, score: @comply_advantage_news.score, story: @comply_advantage_news.story } }
    assert_redirected_to comply_advantage_news_url(@comply_advantage_news)
  end

  test "should destroy comply_advantage_news" do
    assert_difference('ComplyAdvantageNews.count', -1) do
      delete comply_advantage_news_url(@comply_advantage_news)
    end

    assert_redirected_to comply_advantage_news_index_url
  end
end

class Api::V1::ComplyAdvantageNewsController < Api::V1::ApplicationController
  before_action :set_comply_advantage_news, only: [:show, :edit, :update, :destroy]

  # GET /comply_advantage_news.json
  def index
    json_response(ComplyAdvantageNews.all)
  end

  # GET /comply_advantage_news/1.json
  def show
    json_response(@comply_advantage_news)
  end

  # POST /comply_advantage_news.json
  def create
    @comply_advantage_news = ComplyAdvantageNews.create!(comply_advantage_news_params)
    json_response(@comply_advantage_news, :created)
  end

  # PATCH/PUT /comply_advantage_news/1.json
  def update
    @comply_advantage_news.update(comply_advantage_news_params)
    head :no_content
  end

  # DELETE /comply_advantage_news/1.json
  def destroy
    @comply_advantage_news.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comply_advantage_news
      @comply_advantage_news = ComplyAdvantageNews.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comply_advantage_news_params
      params.require(:comply_advantage_news).permit(:score, :story, :company_number)
    end
end

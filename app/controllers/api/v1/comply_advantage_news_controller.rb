class Api::V1::ComplyAdvantageNewsController < Api::V1::ApplicationController
  before_action :set_comply_advantage_news, only: [:show, :edit, :update, :destroy]

  def_param_group :comply_advantage_newses do
    param :comply_advantage_news, Hash, :action_aware => true do
      param :company_number, Integer, :required => true
      param :score, Integer
      param :story, String
    end
  end

  # GET /comply_advantage_news.json
  api :GET, '/v1/comply_advantage_news/', "List all Comply Advantage News"
  def index
    json_response(ComplyAdvantageNews.all)
  end

  # GET /comply_advantage_news/1.json
  api :GET, '/v1/comply_advantage_news/:id', "Show a Comply Advantage News"
  def show
    json_response(@comply_advantage_news)
  end

  # POST /comply_advantage_news.json
  api :POST, '/v1/comply_advantage_news/', "Create a Comply Advantage News"
  param_group :comply_advantage_newses
  def create
    @comply_advantage_news = ComplyAdvantageNews.create!(comply_advantage_news_params)
    json_response(@comply_advantage_news, :created)
  end

  # PATCH/PUT /comply_advantage_news/1.json
  api :PUT, '/v1/comply_advantage_news/:id', "Update a Comply Advantage News"
  param_group :comply_advantage_newses
  def update
    @comply_advantage_news.update(comply_advantage_news_params)
    head :no_content
  end

  # DELETE /comply_advantage_news/1.json
  api :DELETE, '/v1/comply_advantage_news/:id', "Delete a Comply Advantage News"
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

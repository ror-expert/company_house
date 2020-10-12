class ComplyAdvantageNewsController < ApplicationController
  before_action :set_comply_advantage_news, only: [:show, :edit, :update, :destroy]

  # GET /comply_advantage_news
  # GET /comply_advantage_news.json
  def index
    @comply_advantage_news = ComplyAdvantageNews.all
    respond_to do |format|
      format.html { }
      format.json { render json: {comply_advantage_news: @comply_advantage_news} }
    end
  end

  # GET /comply_advantage_news/1
  # GET /comply_advantage_news/1.json
  def show
  end

  # GET /comply_advantage_news/new
  def new
    @comply_advantage_news = ComplyAdvantageNews.new
  end

  # GET /comply_advantage_news/1/edit
  def edit
  end

  # POST /comply_advantage_news
  # POST /comply_advantage_news.json
  def create
    @comply_advantage_news = ComplyAdvantageNews.new(comply_advantage_news_params)

    respond_to do |format|
      if @comply_advantage_news.save
        format.html { redirect_to comply_advantage_news_index_path, notice: 'Comply advantage news was successfully created.' }
        format.json { render :show, status: :created, location: @comply_advantage_news }
      else
        format.html { render :new }
        format.json { render json: @comply_advantage_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comply_advantage_news/1
  # PATCH/PUT /comply_advantage_news/1.json
  def update
    respond_to do |format|
      if @comply_advantage_news.update(comply_advantage_news_params)
        format.html { redirect_to comply_advantage_news_index_path, notice: 'Comply advantage news was successfully updated.' }
        format.json { render :show, status: :ok, location: @comply_advantage_news }
      else
        format.html { render :edit }
        format.json { render json: @comply_advantage_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comply_advantage_news/1
  # DELETE /comply_advantage_news/1.json
  def destroy
    @comply_advantage_news.destroy
    respond_to do |format|
      format.html { redirect_to comply_advantage_news_index_path, notice: 'Comply advantage news was successfully destroyed.' }
      format.json { head :no_content }
    end
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

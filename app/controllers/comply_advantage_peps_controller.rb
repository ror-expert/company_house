class ComplyAdvantagePepsController < ApplicationController
  before_action :set_company
  before_action :set_comply_advantage_pep, only: [:show, :edit, :update, :destroy]

  # GET /comply_advantage_peps
  # GET /comply_advantage_peps.json
  def index
    @comply_advantage_peps = @company.comply_advantage_peps
  end

  # GET /comply_advantage_peps/1
  # GET /comply_advantage_peps/1.json
  def show
  end

  # GET /comply_advantage_peps/new
  def new
    @comply_advantage_pep = @company.comply_advantage_peps.new
  end

  # GET /comply_advantage_peps/1/edit
  def edit
  end

  # POST /comply_advantage_peps
  # POST /comply_advantage_peps.json
  def create
    @comply_advantage_pep = @company.comply_advantage_peps.new(comply_advantage_pep_params)

    respond_to do |format|
      if @comply_advantage_pep.save
        format.html { redirect_to company_comply_advantage_peps_path(@company), notice: 'Comply advantage pep was successfully created.' }
        format.json { render :show, status: :created, location: @comply_advantage_pep }
      else
        format.html { render :new }
        format.json { render json: @comply_advantage_pep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comply_advantage_peps/1
  # PATCH/PUT /comply_advantage_peps/1.json
  def update
    respond_to do |format|
      if @comply_advantage_pep.update(comply_advantage_pep_params)
        format.html { redirect_to company_comply_advantage_peps_path(@company), notice: 'Comply advantage pep was successfully updated.' }
        format.json { render :show, status: :ok, location: @comply_advantage_pep }
      else
        format.html { render :edit }
        format.json { render json: @comply_advantage_pep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comply_advantage_peps/1
  # DELETE /comply_advantage_peps/1.json
  def destroy
    @comply_advantage_pep.destroy
    respond_to do |format|
      format.html { redirect_to company_comply_advantage_peps_path(@company), notice: 'Comply advantage pep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comply_advantage_pep
      @comply_advantage_pep = @company.comply_advantage_peps.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comply_advantage_pep_params
      params.require(:comply_advantage_pep).permit(:person_name)
    end
end

class Api::V1::ComplyAdvantagePepsController < Api::V1::ApplicationController
  before_action :set_comply_advantage_pep, only: [:show, :edit, :update, :destroy]

  # GET /comply_advantage_peps.json
  def index
    json_response(ComplyAdvantagePep.all)
  end

  # GET /comply_advantage_peps/1.json
  def show
    json_response(@comply_advantage_pep)
  end

  # POST /comply_advantage_peps.json
  def create
    @comply_advantage_pep = ComplyAdvantagePep.create!(comply_advantage_pep_params)
    json_response(@comply_advantage_pep, :created)
  end

  # PATCH/PUT /comply_advantage_peps/1.json
  def update
    @comply_advantage_pep.update(comply_advantage_pep_params)
    head :no_content
  end

  # DELETE /comply_advantage_peps/1.json
  def destroy
    @comply_advantage_pep.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comply_advantage_pep
      @comply_advantage_pep = ComplyAdvantagePep.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comply_advantage_pep_params
      params.require(:comply_advantage_pep).permit(:person_name, :company_number)
    end
end

class Api::V1::CompaniesController < Api::V1::ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  # GET /companies.json
  def index
    json_response(Company.all)
  end

  # GET /companies/1.json
  def show
    json_response(@company)
  end

  # POST /companies.json
  def create
    @company = Company.create!(company_params)
    json_response(@company, :created)
  end

  # PATCH/PUT /companies/1.json
  def update
    @company.update(company_params)
    head :no_content
  end

  # DELETE /companies/1.json
  def destroy
    @company.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company ||= Company.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def company_params
      params.require(:company).permit(:company_number, :name, :address_line_1, :address_line_2, :post_code, :city)
    end
end

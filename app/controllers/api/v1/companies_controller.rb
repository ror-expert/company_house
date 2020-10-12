class Api::V1::CompaniesController < Api::V1::ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  def_param_group :companies do
    param :company, Hash, :action_aware => true do
      param :company_number, Integer, :required => true
      param :name, String, :required => true
      param :address_line_1, String
      param :address_line_2, String
      param :post_code, Integer
      param :city, String
    end
  end


  # GET /companies.json
  api :GET, '/v1/companies/', "List all Company house"

  def index
    json_response(Company.all)
  end

  # GET /companies/1.json
  api :GET, '/v1/companies/:id', "Show a Company house"

  def show
    json_response(@company)
  end

  # POST /companies.json
  api :POST, '/v1/companies/', "Create a Company house"
  param_group :companies

  def create
    @company = Company.create!(company_params)
    json_response(@company, :created)
  end

  # PATCH/PUT /companies/1.json
  api :PUT, '/v1/companies/:id', "Update a Company house"
  param_group :companies

  def update
    @company.update(company_params)
    head :no_content
  end

  # DELETE /companies/1.json
  api :DELETE, '/v1/companies/:id', "Delete a Company house"
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

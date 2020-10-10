class ApplicationController < ActionController::Base

  private

    def set_company
      @company ||= Company.find(params[:company_id])
    end
end

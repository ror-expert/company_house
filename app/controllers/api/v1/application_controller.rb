class Api::V1::ApplicationController < ActionController::API
  include Api::V1::ApiResponse
  include Api::V1::ExceptionHandler

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActionController::ParameterMissing, with: :render_params_missing_response

  def route_not_found
    render json: { error: 'invalid path' }, status: :not_found
  end

  def render_unprocessable_entity_response(exception)
    render json: { error: exception.record.errors }, status: :unprocessable_entity
  end

  def render_not_found_response(exception)
    render json: { error: 'Record not found' }, status: :not_found
  end

  def render_params_missing_response(exception)
    render json: { error: exception.message }, status: 400
  end

  def route_not_found
    render json: { error: 'Invalid path' }, status: 404
  end

end

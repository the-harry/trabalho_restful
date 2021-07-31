# frozen_string_literal: true

class Api::V1::ApiController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound do
    render status: 404, json: { error: :not_found, message: 'Registro nao encontrado.' }
  end

  rescue_from ActiveRecord::RecordInvalid do |error|
    render status: 422, json: { error: :unprocessable_entity, message: error.record.errors }
  end

  rescue_from ActionController::ParameterMissing do
    render status: 422, json: { error: :unprocessable_entity, message: 'Missing params.' }
  end
end

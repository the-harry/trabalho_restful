# frozen_string_literal: true

class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authenticate

  private

  def authenticate
    authenticate_or_request_with_http_token do |token, _options|
      nome, rm = token.split(':')
      Aluno.find_by(nome: nome, rm: rm.to_i)
    end
  end

  def current_user
    @current_user ||= authenticate
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'DELETE /api/v1/trabalho/:id', type: :request do
  let(:trabalho) { create(:trabalho, title: 'errado', url: 'invalido.com') }

  context 'successo - 200' do
    it 'apaga o trabalho' do
      delete "/api/v1/trabalho/#{trabalho.id}"

      expect(response).to have_http_status(:ok)
    end
  end

  context 'nao encontrado - 404' do
    it 'responde com erro quando nao existe' do
      delete '/api/v1/trabalho/42'

      expect(response).to have_http_status(:not_found)
    end
  end
end

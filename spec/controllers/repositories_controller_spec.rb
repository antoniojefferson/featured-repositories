require 'rails_helper'

RSpec.describe RepositoriesController do
  let!(:repository) { create(:repository) }

  describe 'GET #index' do
    before { get :index }

    it 'render index template' do
      expect(response).to render_template('repositories/index')
    end

    it 'returns status 200' do
      expect(response.status).to be 200
    end

    it 'assigns @repos' do
      expect(assigns(:repos)).to eq([repository])
    end
  end

  describe 'GET #show' do
    before { get :show, params: { id: repository.id } }

    it 'render show template' do
      expect(response).to render_template('repositories/show')
    end

    it 'returns status 200' do
      expect(response.status).to be 200
    end
  end

  describe 'GET #new' do
    before { get :new }

    it 'redirect to index template' do
      expect(response).to redirect_to('/')
    end

    it 'returns status 302' do
      expect(response.status).to be 302
    end
  end

  describe 'GET #destroy' do
    before { get :destroy, params: { id: repository.id } }

    it 'redirect to index template' do
      expect(response).to redirect_to('/')
    end

    it 'returns status 302' do
      expect(response.status).to be 302
    end

    it 'assigns @repository' do
      expect(assigns(:repository)).to eq(repository)
    end

    it 'returns notice' do
      expect(flash[:notice]).to eq("Repositório do #{repository.name} foi removido!")
    end
  end
end

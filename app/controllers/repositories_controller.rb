class RepositoriesController < ApplicationController
  before_action :set_repository, only: %i[ show destroy ]

  def index
    @repos = Repository.all.order(:name)
  end

  def show
  end

  def new
    failures = 0

    languages = [
      { language: 'javascript', framework: 'react' },
      { language: 'javascript', framework: 'react-native' },
      { language: 'python',     framework: 'django' },
      { language: 'dart',       framework: 'flutter' },
      { language: 'ruby',       framework: 'rails' }
    ]

    languages.each do |language|
      failures += 1 unless create_or_update_repo(language)
    end

    if failures > 0
      flash[:alert] = "Não foi possível obter todos os repositórios. Por favor, tente novamente!"
    else
      flash[:notice] = "Repositórios encontrados e armazenados!"
    end

    redirect_to action: :index
  end

  def destroy
    @repository.destroy

    redirect_to root_path, notice: "Repositório do #{@repository.name} foi removido!"
  end

  private

  def create_or_update_repo(object_language)
    
    repo = Github::Repo.search(object_language)

    return false unless repo.present?

    current_tag = Github::Repo.current_tag(repo["tags_url"])
    languages = Github::Repo.get_languages(repo["languages_url"])

    @repository = Repository.find_or_initialize_by(repository_id: repo["id"])

    @repository.name             = repo["name"]
    @repository.full_name        = repo["full_name"]
    @repository.avatar_url       = repo["owner"]["avatar_url"]
    @repository.html_url         = repo["html_url"]
    @repository.description      = repo["description"]
    @repository.current_tag      = current_tag
    @repository.languages        = languages
    @repository.created          = repo["created_at"]
    @repository.pushed           = repo["pushed_at"]
    @repository.homepage         = repo["homepage"]
    @repository.stargazers_count = repo["stargazers_count"]
    @repository.watchers_count   = repo["watchers_count"]
    @repository.language         = repo["language"]
    @repository.license          = repo["license"]["name"]
    @repository.save
  end
  
  def set_repository
    @repository = Repository.find(params[:id])
  end
end
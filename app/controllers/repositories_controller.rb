class RepositoriesController < ApplicationController

  def create
    response = HTTParty.get("https://api.github.com/repos/#{params[:repository][:organization]}/#{params[:repository][:repos_name]}/contributors").first(3)
    @result = Repository.create(repository_params).create_contributtors(response.map{|res| res['login']})
  rescue
    redirect_to root_path, alert: 'Вы предоставили некоректные данные'
  end

  private

  def repository_params
    params.require(:repository).permit(:organization, :repos_name)
  end

end
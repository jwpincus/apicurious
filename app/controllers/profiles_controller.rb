class ProfilesController < ApplicationController
  def index
    @user_info = GithubService.fetch_user_info(session[:token])
    @starred_repos = GithubService.fetch_starred_repos(session[:token], @user_info.login)
    @recent_activity = GithubService.recent_activity(session[:token], @user_info.login)
  end
end

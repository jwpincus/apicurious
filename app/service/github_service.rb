require 'ostruct'
class GithubService

  def self.fetch_user_info(token)
    response = Faraday.get('https://api.github.com/user', access_token: token)
    OpenStruct.new(JSON.parse(response.body))
  end

  def self.fetch_starred_repos(token, username)
    response = Faraday.get("https://api.github.com/users/#{username}/starred", access_token: token)
    JSON.parse(response.body)
  end

  def self.recent_activity(token, username)
    response = Faraday.get("https://api.github.com/users/#{username}/events", access_token: token)
    JSON.parse(response.body)
  end

end

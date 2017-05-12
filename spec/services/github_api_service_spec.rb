require 'rails_helper'

describe 'get user info' do
  it "should have a url for avatar/profile pic" do
    parsed_json = {
      "avatar_url" => "https://avatars3.githubusercontent.com/u/10299035?v=3"
    }
    allow(GithubService).to receive(:fetch_user_info).and_return(parsed_json)
    expect(GithubService.fetch_user_info['avatar_url']).to eq('https://avatars3.githubusercontent.com/u/10299035?v=3')
  end
end

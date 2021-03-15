class AutocompletesController < ApplicationController
  def show
    response = JSON.parse(HTTP.get("https://www.reddit.com/subreddits/search.json?q=tes&limit=10"))
    # response = JSON.parse(HTTP.get("https://www.reddit.com/subreddits/search.json?q=#{params[:query]}&limit=10"))
    subreddits = response["data"]["children"].map do |subreddit|
      {
        name: subreddit["data"].fetch("display_name").downcase,
        title: subreddit["data"].fetch("title"),
        description: subreddit["data"].fetch("public_description").truncate(100)
      }
    end
    render json: subreddits

  end
end

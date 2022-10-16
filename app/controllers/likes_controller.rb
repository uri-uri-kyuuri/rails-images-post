class LikesController < ApplicationController

    def index
       
      @rank_tweets = Tweet.all.sort {|a,b| b.liked_users.count <=> a.liked_users.count}
      end
    
    
    
    
    def create
        like = current_user.likes.create(tweet_id: params[:tweet_id]) #user_idとtweet_idの二つを代入
        redirect_back(fallback_location: root_path)
    end
    
      def destroy
        like = Like.find_by(tweet_id: params[:tweet_id], user_id: current_user.id)
        like.destroy
        redirect_back(fallback_location: root_path)
    end

end

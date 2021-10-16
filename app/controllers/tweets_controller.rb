class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
    end
    
    def new
        @tweet = Tweet.new
    end
    
    def create
    
        logger.debug "---------------"
        @tweet = Tweet.new(message: params[:tweet][:message])
        if @tweet.save
            flash[:notice] = 'ツイートできました'
             redirect_to tweets_path
        else
            render 'new' 
        end
    end
    
    def destroy
        tweet = Tweet.find(params[:id])
        if tweet.destroy
            flash[:notice] = 'ツイートを削除しました'
        end
        redirect_to root_path
    end
end

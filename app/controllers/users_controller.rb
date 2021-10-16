class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end
    
    def create
        logger.debug "---------------"
        @user = User.new(uid: params[:user][:uid], pass: params[:user][:pass])
        if @user.save
            flash[:notice] = 'ツイートできました'
             redirect_to users_path
        else
            render 'new' 
        redirect_to root_path
        end
    end

    def destroy
        user = User.find(params[:id])
        if user.destroy
            flash[:notice] = 'ツイートを削除しました'
        end
        redirect_to root_path
    end
end

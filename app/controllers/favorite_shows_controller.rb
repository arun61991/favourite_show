class FavoriteShowsController < ApplicationController
    before_action :set_show
    
    def create
      if Favorite.create(favorited: @show, user: current_user)
        redirect_to shows_path, notice: 'Show has been favorited...!'
      end
    end
    
    def destroy
      Favorite.where(favorited_id: @show.id, user_id: current_user.id).first.destroy
      redirect_to shows_path, notice: 'Show has been removed from favorites...!'
    end
    
    private
    
    def set_show
      @show = Show.find(params[:show_id] || params[:id])
    end
  end
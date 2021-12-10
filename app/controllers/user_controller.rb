class UserController < ActionController::Base
    layout "application"
    before_action :authenticate_user!
    def pageuser
        respond_to do |format|
            format.html
        end                
    end
    def profile
        @games = Game.where(creator: current_user).or(Game.where(opponent: current_user))
        respond_to do |format|
            format.html
        end                
    end
    def gameplay
        respond_to do |format|
            format.html
        end
    end
    def edit_profile
        respond_to do |format|
            format.html
        end 
    end
    def update_profile
        if  current_user.update(params.require(:user).permit(:password))
            redirect_to "/myprofile"
        else
            render :edit_profile
        end  
    end               
end
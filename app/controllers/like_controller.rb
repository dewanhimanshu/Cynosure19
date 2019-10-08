class LikeController < ApplicationController
    def increase
   
        current_user.like_count =  current_user.like_count + 1
        current_user.save
        
        render :json => {
          likes:current_user.like_count
        }
      end

    def mafia
        
    end


end

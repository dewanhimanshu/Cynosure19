class BugeventController < ApplicationController
  #before_action :authenticate_user! , except: [:index,:link]
  
  def index
  end

  def link
    render :json => {
    message:'Welocme Hacker !!',
    important:'Login to enter the contest',  
    link:'/bugevent/getlikes'
    
    }

    def getlikes
      @likes = current_user.like_count
 
    end

    def increase
   
      current_user.like_count =  current_user.like_count + 1
      render :json => {
        likes:current_user.like_count
      }
    end
   

    


  end
end

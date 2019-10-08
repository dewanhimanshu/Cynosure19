class UsersController < ApplicationController

    def complete1
        current_user.event1 = true
        current_user.save
    end

    def complete2
      
        if current_user.event1 == false
           return render :json => {
                smart:'Yr Event1 Phele Karlo Please ',
                link:'bugevent/index'
              }
        end
        
        if params[:password] != current_user.token
            return render :json => {
                smart:'Your Ans Is Wrong'
              }
        else
            current_user.event2 = true
            current_user.save
          return  render :json =>{
                ans:'success',
                link:'users/event3'
            }
        end
    end

    def event2
        current_user.token =  SecureRandom.uuid
        current_user.save
        cookies[:password] =  current_user.token
    end


    def event3
       @token = current_user.token
       
    end



    def complete3
        
        if params[:ans] = 'Wow! I am i have completed it ...'
            user = User.find_by(token:params[:token])
            if user != nil
            Winner.create(user_id:user.id)
            render :json=>{
                message:'Wait for your ranking we will contact you soon'
            }
            else
                render :json=>{
                    token:"Need Token"
                }
        end

        else
            render :json=>{
                token:"Ans is Wrong "
            }  
        end   
    end


end

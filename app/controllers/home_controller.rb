class HomeController < ApplicationController
  def index
  end

  def contact

  end

  def form

  end

  def submit
    byebug
  end

  def team

  end

  def newform

  end

  def submitit
   
   r =  Register.new(
      name:params[:name],
      email:params[:email],
      college:params[:college],
      number:params[:contact]
    )
    if params[:check1]!= nil
      r.hunt = true
      
    end

    if params[:check2]!=nil
      r.coding = true
      
    end

    if params[:check3] != nil
      r.quiz = true
      
    end

    if params[:check4] != nil
      r.web = true
    end

    if params[:check5] != nil
      r.bug = true
    end

    r.save
    RegisterMailer.with(email:r.email,name:r.name).welcome_email.deliver_now
    flash[:success] = "Succesfully Registered For Events"
    redirect_to root_url
    
    
  end

  
end

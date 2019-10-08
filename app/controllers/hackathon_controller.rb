class HackathonController < ApplicationController
  def register
  end

  def submit
 
    h = Hackathon.new(
      team_name:params[:id]["0"][:"value"],
      leader_name:params[:id]["1"][:"value"]      ,
      # team_member_details:params[:team_member_details],
      contact_number:params[:id]["3"][:"value"],
      email_id:params[:id]["4"][:"value"]

      )
      h.save
      flash[:success] = "Succesfully Registered For Hackathon"
      redirect_to root_url
  end
end

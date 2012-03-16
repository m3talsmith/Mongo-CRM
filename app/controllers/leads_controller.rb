class LeadsController < ApplicationController

  def index
  end
  
  def new
    @lead = Lead.new
  end
  
  def create
    @lead = Lead.new params[:lead]
    if @lead.save
      redirect_to lead_path @lead, alert: 'New Lead Created'
    else
      render :new
    end
  end
  
  def show
  end

end

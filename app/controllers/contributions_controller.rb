class ContributionsController < ApplicationController
  before_action :logged_in_user, only: [:index, :create]

  def index
  end

  def create
    @contribution = current_user.contributions.build(contribution_params)
    if @contribution.save
      flash[:success] = "Post created!"
      redirect_to root_url
    else
      render 'home/top'
    end
  end

  def contribution_params
    params.require(:contribution).permit(:shop_name, :summary, :business_hour)
  end
end

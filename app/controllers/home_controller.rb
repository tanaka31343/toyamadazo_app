class HomeController < ApplicationController
  before_action :set_contribution, only: [:top, :contribute]

  def top
    @contributions = Contribution.last(10)

  end

  def contribute
  end

  def set_contribution
    @contribution = current_user.contributions.build if logged_in?
  end
end

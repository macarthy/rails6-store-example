class Admin::DashboardsController < ApplicationController

  before_action :authenticate_admin!

  def show
    render text: "hello"
  end

end

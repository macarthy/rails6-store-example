class Admin::DashboardsController < ActionController
  before_action :authenticate_member!

  def index
    render
  end

end

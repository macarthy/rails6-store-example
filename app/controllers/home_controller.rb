class HomeController < ApplicationController
  def index
  end

  def show
    render text: "hello"
  end
end

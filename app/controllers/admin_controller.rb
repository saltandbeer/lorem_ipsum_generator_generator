class AdminController < ApplicationController
  before_filter :authenticate_user!

  def index
    @generators = Generator.all
  end
end
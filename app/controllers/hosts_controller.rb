class HostsController < ApplicationController
  def index
    render json: @hosts = Host.limit(20).order('created_at desc')
    # render json: @hosts = Host.all
  end
end

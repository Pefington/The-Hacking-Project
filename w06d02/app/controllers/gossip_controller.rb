class GossipController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def create; end

  def new; end

  def edit; end

  def show
    @gossip = Gossip.find_by_id(params[:id])
  end

  def update; end

  def destroy; end
end

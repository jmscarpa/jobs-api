class StatusController < ApplicationController

  def index
    render json: { status: :ok, title: "Jobs Board API"}
  end

end

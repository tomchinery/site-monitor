class RequestsController < ApplicationController
  def list
    @requests = Request.where("site_id = ? AND created_at >= ?", params[:id], params[:period].to_i.seconds.ago).to_a
    respond_to do |format|
      format.html
      format.json {render :json => @requests}
    end
  end
end
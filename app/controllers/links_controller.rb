# Links layer of the app.
class LinksController < ApplicationController

  def create
    @link = Link.create(params[:link])
    redirect_to action: 'show', id: @link.id
  end

  def show
    link = Link.find(params[:id])
    @link_parsed = Scraper.new.parse(link.url)

    render json: @link_parsed
  end

end

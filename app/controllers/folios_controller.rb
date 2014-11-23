class FoliosController < ApplicationController
  def index
    @folios = Folio.all
  end

  def show
    @folio = Folio.find(params[:id])
  end


end

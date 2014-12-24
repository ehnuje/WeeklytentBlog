class FoliosController < ApplicationController
  def index
    @folios = Folio.curation.all
  end

  def show
    @folio = Folio.find(params[:id])
  end


end

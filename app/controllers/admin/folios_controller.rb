class Admin::FoliosController < Admin::ApplicationController
  def index
    @folios = Folio.all
  end

  def new
    @folio = Folio.new
  end

  def create
    @folio = Folio.new(folio_params)

    if @folio.save
      redirect_to admin_folios_path
    else
      render "new"
    end
  end

  def edit
    @folio = Folio.find(params[:id])
  end

  def update
    @folio = Folio.find(params[:id])
    # raise @folio.inspect

    if @folio.update(folio_params)
      redirect_to admin_folios_path
    else
      render 'edit'
    end
  end

  def destroy
    @folio = Folio.find(params[:id])
    @folio.destroy

    redirect_to admin_folios_path
  end

  private
    def folio_params
      params.require(:folio).permit(:title, :description, :image_url, :figure)
    end
end

class ChapitresController < ApplicationController
  before_action :set_chapitre, only: [:show, :edit, :update, :destroy]

  # GET /chapitres
  # GET /chapitres.json
  def index
    @chapitres = Chapitre.all
  end

  # GET /chapitres/1
  # GET /chapitres/1.json
  def show
	@chapitre = Chapitre.find(params[:id])
  end

  # GET /chapitres/new
  def new
    @chapitre = Chapitre.new
  end

  # GET /chapitres/1/edit
  def edit
  end

  # POST /chapitres
  # POST /chapitres.json
  def create
    @chapitre = Chapitre.new(chapitre_params)

    
      if @chapitre.save
        redirect_to @chapitre
      else
        render 'new'
      end
    
  end

  # PATCH/PUT /chapitres/1
  # PATCH/PUT /chapitres/1.json
  def update
   
      if @chapitre.update(chapitre_params)
        redirect_to @chapitre
      else
       render 'edit'
      end
    
  end

  # DELETE /chapitres/1
  # DELETE /chapitres/1.json
  def destroy
    @chapitre = Chapitre.find(params[:id])
    @chapitre.destroy
    redirect_to chapitres_path
    
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapitre
      @chapitre = Chapitre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapitre_params
      params.require(:chapitre).permit(:numero, :titre)
    end
end

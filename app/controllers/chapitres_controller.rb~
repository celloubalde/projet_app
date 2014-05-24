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

    respond_to do |format|
      if @chapitre.save
        format.html { redirect_to @chapitre, notice: 'Chapitre was successfully created.' }
        format.json { render action: 'show', status: :created, location: @chapitre }
      else
        format.html { render action: 'new' }
        format.json { render json: @chapitre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapitres/1
  # PATCH/PUT /chapitres/1.json
  def update
    respond_to do |format|
      if @chapitre.update(chapitre_params)
        format.html { redirect_to @chapitre, notice: 'Chapitre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chapitre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapitres/1
  # DELETE /chapitres/1.json
  def destroy
    @chapitre.destroy
    respond_to do |format|
      format.html { redirect_to chapitres_url }
      format.json { head :no_content }
    end
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

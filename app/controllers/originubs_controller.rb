class OriginubsController < ApplicationController
  before_action :set_originub, only: [:show, :edit, :update, :destroy]

  # GET /originubs
  # GET /originubs.json
  def index
    @originubs = Originub.all.page(params[:page])
  end

  # GET /originubs/1
  # GET /originubs/1.json
  def show
  end

  # GET /originubs/new
  def new
    @originub = Originub.new
  end

  # GET /originubs/1/edit
  def edit
  end

  # POST /originubs
  # POST /originubs.json
  def create
    @originub = Originub.new(originub_params)

    respond_to do |format|
      if @originub.save
        format.html { redirect_to @originub, notice: 'Originub was successfully created.' }
        format.json { render :show, status: :created, location: @originub }
      else
        format.html { render :new }
        format.json { render json: @originub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /originubs/1
  # PATCH/PUT /originubs/1.json
  def update
    respond_to do |format|
      if @originub.update(originub_params)
        format.html { redirect_to @originub, notice: 'Originub was successfully updated.' }
        format.json { render :show, status: :ok, location: @originub }
      else
        format.html { render :edit }
        format.json { render json: @originub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /originubs/1
  # DELETE /originubs/1.json
  def destroy
    @originub.destroy
    respond_to do |format|
      format.html { redirect_to originubs_url, notice: 'Originub was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_originub
      @originub = Originub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def originub_params
      params.require(:originub).permit(
         :latitude, :longitude, :cod_munic, :cod_cnes,
         :name, :address, :neighborhood, :city, :tel,
         :dsc_estrut_fisic_ambiencia, :dsc_adap_defic_fisic_idosos,
         :dsc_equipamentos, :dsc_medicamentos
      )
    end
end

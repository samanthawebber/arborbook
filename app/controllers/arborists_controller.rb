class ArboristsController < ApplicationController
  before_action :set_arborist, only: %i[ show edit update destroy ]

  # GET /arborists or /arborists.json
  def index
    @arborists = Arborist.all
  end

  # GET /arborists/1 or /arborists/1.json
  def show
  end

  # GET /arborists/new
  def new
    @arborist = Arborist.new
  end

  # GET /arborists/1/edit
  def edit
  end

  # POST /arborists or /arborists.json
  def create
    @arborist = Arborist.new(arborist_params)

    respond_to do |format|
      if @arborist.save
        format.html { redirect_to arborist_url(@arborist), notice: "Arborist was successfully created." }
        format.json { render :show, status: :created, location: @arborist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @arborist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arborists/1 or /arborists/1.json
  def update
    respond_to do |format|
      if @arborist.update(arborist_params)
        format.html { redirect_to arborist_url(@arborist), notice: "Arborist was successfully updated." }
        format.json { render :show, status: :ok, location: @arborist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @arborist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arborists/1 or /arborists/1.json
  def destroy
    @arborist.destroy!

    respond_to do |format|
      format.html { redirect_to arborists_url, notice: "Arborist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arborist
      @arborist = Arborist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def arborist_params
      params.require(:arborist).permit(:first_name, :last_name, :isa_certified, :etv_certified, :zipcode, :skills)
    end
end

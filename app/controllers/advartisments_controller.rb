class AdvartismentsController < ApplicationController
  before_filter :provjera , :except => [:login]
  before_action :set_advartisment, only: [:show, :edit, :update, :destroy]

  # GET /advartisments
  # GET /advartisments.json
  def index
    @advartisments = Advartisment.all
  end

  # GET /advartisments/1
  # GET /advartisments/1.json
  def show
  end

  # GET /advartisments/new
  def new
    @advartisment = Advartisment.new
  end

  # GET /advartisments/1/edit
  def edit
  end

  # POST /advartisments
  # POST /advartisments.json
  def create
    @advartisment = Advartisment.new(advartisment_params)

    respond_to do |format|
      if @advartisment.save
        format.html { redirect_to @advartisment, notice: 'Advartisment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @advartisment }
      else
        format.html { render action: 'new' }
        format.json { render json: @advartisment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advartisments/1
  # PATCH/PUT /advartisments/1.json
  def update
    respond_to do |format|
      if @advartisment.update(advartisment_params)
        format.html { redirect_to @advartisment, notice: 'Advartisment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @advartisment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advartisments/1
  # DELETE /advartisments/1.json
  def destroy
    @advartisment.destroy
    respond_to do |format|
      format.html { redirect_to advartisments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advartisment
      @advartisment = Advartisment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advartisment_params
      params.require(:advartisment).permit(:title, :description, :published, :expire, :employer_id, :category_id)
    end
end

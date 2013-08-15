class ThangsController < ApplicationController
  before_action :set_thang, only: [:show, :edit, :update, :destroy]

  # GET /thangs
  # GET /thangs.json
  def index
    @thangs = Thang.all
  end

  # GET /thangs/1
  # GET /thangs/1.json
  def show
  end

  # GET /thangs/new
  def new
    @thang = Thang.new
  end

  # GET /thangs/1/edit
  def edit
  end

  # POST /thangs
  # POST /thangs.json
  def create
    @thang = Thang.new(thang_params)

    respond_to do |format|
      if @thang.save
        format.html { redirect_to @thang, notice: 'Thang was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thang }
      else
        format.html { render action: 'new' }
        format.json { render json: @thang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thangs/1
  # PATCH/PUT /thangs/1.json
  def update
    respond_to do |format|
      if @thang.update(thang_params)
        format.html { redirect_to @thang, notice: 'Thang was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thangs/1
  # DELETE /thangs/1.json
  def destroy
    @thang.destroy
    respond_to do |format|
      format.html { redirect_to thangs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thang
      @thang = Thang.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thang_params
      params.require(:thang).permit(:what, :place, :date, :amount, :novelty_rating, :description, :flyer)
    end
end

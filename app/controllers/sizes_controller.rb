class SizesController < ApplicationController
  before_action :set_size, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @sizes = Size.all
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @size = Size.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  # POST /categories.json
  def create
    @size = Size.new(size_params)

    respond_to do |format|
      if @size.save
        format.html { redirect_to @size, notice: 'size was successfully created.' }
        format.json { render :show, status: :created, location: @size }
      else
        format.html { render :new }
        format.json { render json: @size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    respond_to do |format|
      if @size.update(size_params)
        format.html { redirect_to @size, notice: 'size was successfully updated.' }
        format.json { render :show, status: :ok, location: @size }
      else
        format.html { render :edit }
        format.json { render json: @size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @size.destroy
    respond_to do |format|
      format.html { redirect_to sizes_url, notice: 'size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_size
      @size = Size.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def size_params
      params.require(:size).permit(:name)
    end
end

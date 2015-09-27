class PredictionsController < ApplicationController
  before_action :set_prediction, only: [:show, :edit, :update, :destroy]

  # GET /predictions
  def index
    @predictions = Prediction.all
  end

  def show
    # default handle if none given by user
      @prediction.handle = "yourhandle" if @prediction.handle.empty?
    
    # points
      @p1 = Faker::Number.between(7, 25)
      @p1r = Faker::Number.between(4, 9)
      @p2 = Faker::Number.between(7, 25)
      @p2r = Faker::Number.between(2, 4)
      @p2r2 = Faker::Number.between(-12, -5)
      @p3 = Faker::Number.between(-4, -1)
    
    # time posted ago
      @t1 = Faker::Number.between(1, 4)
      @c1 = Faker::Number.between(45, 57)
      @c1r = Faker::Number.between(35, 42)
      @c2 = Faker::Number.between(21, 33)
      @c2r = Faker::Number.between(12, 18)
      @c2r2 = Faker::Number.between(5, 10)
      @c3 = Faker::Number.between(52, 60)
    
    # username
      @u1 = Faker::Name.name.delete(' ').downcase
      @u1r = Faker::Name.name.delete(' ').downcase
      @u2 = Faker::Name.name.delete(' ').downcase
      @u2r = Faker::Name.name.delete(' ').downcase
  end

  # GET /predictions/new
  def new
    @prediction = Prediction.new
  end

  # GET /predictions/1/edit
  def edit
  end

  # POST /predictions
  def create
    @prediction = Prediction.new(prediction_params)

    respond_to do |format|
      if @prediction.save
        format.html { redirect_to @prediction, notice: 'Prediction was successfully created.' }
        format.json { render :show, status: :created, location: @prediction }
      else
        format.html { render :new }
        format.json { render json: @prediction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /predictions/1
  def update
    respond_to do |format|
      if @prediction.update(prediction_params)
        format.html { redirect_to @prediction, notice: 'Prediction was successfully updated.' }
        format.json { render :show, status: :ok, location: @prediction }
      else
        format.html { render :edit }
        format.json { render json: @prediction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /predictions/1
  def destroy
    @prediction.destroy
    respond_to do |format|
      format.html { redirect_to predictions_url, notice: 'Prediction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prediction
      @prediction = Prediction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prediction_params
      params.require(:prediction).permit(:title, :url, :handle)
    end
end

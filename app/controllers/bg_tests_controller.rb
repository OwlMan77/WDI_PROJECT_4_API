class BgTestsController < ApplicationController
  before_action :set_bg_test, only: [:show, :update, :destroy]

  # GET /bg_tests
  def index
    @bg_tests = BgTest.where(user_id: @current_user)

    render json: @bg_tests
  end

  # GET /bg_tests/1
  def show
    render json: @bg_test
  end

  # POST /bg_tests
  def create
    @bg_test = BgTest.new(bg_test_params)

    if @bg_test.save
      render json: @bg_test, status: :created, location: @bg_test
    else
      render json: @bg_test.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bg_tests/1
  def update
    if @bg_test.update(bg_test_params)
      render json: @bg_test
    else
      render json: @bg_test.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bg_tests/1
  def destroy
    @bg_test.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bg_test
      @bg_test = BgTest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bg_test_params
      params.require(:bg_test).permit(:bg_result, :date, :time, :user_id)
    end
end

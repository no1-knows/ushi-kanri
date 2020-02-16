class Cows::MovesController < ApplicationController
  before_action :set_cow, only: [:edit, :update]


  # GET /cows/1/edit
  def edit
    @cows = Cow.all.order(stall: "ASC")
  end

  # PATCH/PUT /cows/1
  # PATCH/PUT /cows/1.json
  def update
    respond_to do |format|
      if @cow.update(stall: cow_params[:move_id])
        format.html { redirect_to cows_path, notice: 'Cow was successfully updated.' }
        format.json { render :show, status: :ok, location: @cow }
      else
        format.html { render :edit }
        format.json { render json: @cow.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cow
      @cow = Cow.find(params[:cow_id])
    end

    # Only allow a list of trusted parameters through.
    def cow_params
      params.require(:cow).permit( :move_id)
    end
end

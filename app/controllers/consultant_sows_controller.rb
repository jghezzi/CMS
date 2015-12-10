class ConsultantSowsController < ApplicationController

	def new
		@all_sows = Sow.all
		@my_sows = current_consultant.sows.all
		@to_assign = @all_sows - @my_sows
		@consultant_sow = ConsultantSow.new
	end

	def create
		@consultant_sow = ConsultantSow.new(consultant_sow_params)

    respond_to do |format|
      if @consultant_sow.save
        format.html { redirect_to @consultant_sow, notice: 'Assigned.' }
        format.json { render :show, status: :created, location: @consultant_sow }
      else
        format.html { render :new }
        format.json { render json: @consultant_sow.errors, status: :unprocessable_entity }
      end
    end
	end

	private

	def consultant_sow_params
		params.require(:consultant_sow).permit(:consultant_id, :sow_id)
	end

end
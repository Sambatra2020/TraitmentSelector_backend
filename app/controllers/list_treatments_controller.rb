class ListTreatmentsController < ApplicationController
  before_action :set_list_treatment, only: [:show, :update, :destroy]

  # GET /list_treatments
  def index
    @list_treatments = ListTreatment.all

    render json: @list_treatments
  end

  # GET /list_treatments/1
  def show
    render json: @list_treatment
  end

  # POST /list_treatments
  def create
    @list_treatment = ListTreatment.new(list_treatment_params)

    if @list_treatment.save
      render json: @list_treatment, status: :created, location: @list_treatment
    else
      render json: @list_treatment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /list_treatments/1
  def update
    if @list_treatment.update(list_treatment_params)
      render json: @list_treatment
    else
      render json: @list_treatment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /list_treatments/1
  def destroy
    @list_treatment.destroy
  end

  private
    # Use callbacks to share common setup or constreants between actions.
    def set_list_treatment
      @list_treatment = ListTreatment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def list_treatment_params
      params.fetch(:list_treatment, {}).permit(:patient_id,:treatment_id)
    end
end

# controller for encounters
class EncountersController < ApplicationController
  def show
    @encounter = Encounter.find(params[:id])
  end

  def new
    @encounter = Encounter.new
  end

  def edit
    @encounter = Encounter.find(params[:id])
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @encounter = @patient.encounters.create(encounter_params)
    redirect_to patient_path(@patient)
  end

  def destroy
      @encounter = Encounter.find(params[:id])
      # TODO: print error message when destroy fail
      @encounter.destroy
      redirect_to patients_path
  end

  # need premit to create new patient
  private
    def encounter_params
      params.require(:encounter).permit(:visitNumber, :admittedAt, :dischargedAt, :location, :room, :bed)
    end
  end

# controller for the patient
class PatientsController < ApplicationController
  
  # standard CRUD for patients
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def create
    @patient = Patient.new(patient_params)
    # if save failed, go back to the add new patient page and print error message
    if @patient.save
     redirect_to patients_path
    else
     render 'new'
    end
  end

  def update
    @patient = Patient.find(params[:id])
    # if update failed, go back to edit page and print error message
    if @patient.update(patient_params)
     redirect_to patients_path
    else
     render 'edit'
    end
  end

  def destroy
      @patient = Patient.find(params[:id])
      # TODO: print error message when destroy fail
      @patient.destroy
      redirect_to patients_path
  end

  # need premit to create new patient
  private
    def patient_params
      params.require(:patient).permit(:firstName, :middleName, :lastName, :weight, :Height, :MRN)
    end
end

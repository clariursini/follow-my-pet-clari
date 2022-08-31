class StudiesController < ApplicationController
  def index
    @pet = Pet.find(params[:id]).clinical_histories.id
    @studies = Study.where(clinical_history_id: @pet)
  end

  def new
    @study = Study.new
  end

  def create
    @study = Study.new(study_params)
    @study.clinical_history_id = Pet.find(params[:id]).clinical_histories
    if @study.save
      redirect_to clinical_history_path
    else
      render 'study/new', status: :unprocessable_entity
    end
  end

  def edit
    @study = Study.find(params[:id])
  end

  def update
    @study = Study.find(params[:id])
    @study.update(study_params)
    redirect_to clinical_history_path
  end

  private

  def study_params
    params.require(:study).permit(:name, :photo)
  end
end

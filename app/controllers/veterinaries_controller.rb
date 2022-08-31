class VeterinariesController < ApplicationController
  def index
    if params[:query].present? # si la query esta presente
      if User.search_by_location(params[:query]).size.positive? # Si la query encuentra algo
        @veterinaries = User.where(type_of_user: "Veterinary")
        @veterinaries.search_by_location(params[:query])
      else
        "No results found" # Si no encuentra resultados
      end
    else
      @veterinaries = User.where(type_of_user: "Veterinary") # Si no buscamos nada que traiga todas
    end
  end

  def show
    @veterinary = User.find(params[:id])
  end
end

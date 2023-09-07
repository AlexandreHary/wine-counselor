class Caviste::WinesController < ApplicationController
  before_action :set_wine, only: %i[show edit update destroy]

  def index
    @wines = Wine.all
  end

  def show
    # set_wine
  end

  def new
    @wine = Wine.new
    @wines = Wine.all
  end

  def create
    @wine = Wine.new(wine_params)
    if @wine.save
      puts "Vin enregistré !" # Debug output
      redirect_to caviste_wines_path, notice: "Publié avec succès !"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # set_wine
  end

  def update
    # set_wine
    if @wine.update(wine_params)
      redirect_to caviste_wines_path, notice: "Le vin a été mis à jour avec succès."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    # set_wine

    if @wine.destroy # Supprime l'offre de la base de données
      redirect_to caviste_wines_path, notice: "Le vin a été supprimé avec succès."
    else
      redirect_to caviste_wine_path(@wine), alert: "Nous n'avons pas pu supprimer le vin"
    end
  end

  private

  def set_wine
    @wine = Wine.find(params[:id])
  end

  def wine_params
    params.require(:wine).permit(:rating, :name, :description, :year, :appellation, :wine_photo)
  end
end

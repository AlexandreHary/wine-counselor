class Caviste::WinesController < ApplicationController
  def index
    @wines = Wine.all
  end

  def show
    set_wine
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_params)
    @wine.user = current_user
    if @wine.save
      puts "Vin enregistré !" # Debug output
      redirect_to caviste_wines_path, notice: "Publié avec succès !"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    set_wine
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
    params.require(:wine).permit(:rating, :name, :description, :year, :appellation, :photo)
  end
end

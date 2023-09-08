class Caviste::OffersController < ApplicationController
  before_action :set_offer, only: %i[show edit update destroy]

  def index
    @offers = current_user.offers
  end

  def show
    # set_offer
  end

  def new
    @offer = Offer.new
    @wines = Wine.all.order(:name)
  end

  def create
    # if @offer.save
    #   selected_wine = Wine.find(@offer.wine_id)
    #   @offer.update(wine_image_path: selected_wine.image_path) # Déplacez ceci ici
    #   redirect_to caviste_offers_path, notice: "Offre créée avec succès !"
    # else
    #   render :new
    # end

    @offer = Offer.new(offer_params)
    @offer.user = current_user
    @wines = Wine.all.order(:name)
    if @offer.save
      puts "Offre enregistré !" # Debug output
      redirect_to caviste_offers_path, notice: "Publié avec succès !"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @wines = Wine.all.order(:name)
    # set_offer
  end

  def update
    # raise
    @offer = Offer.find(params["id"])
    @wines = Wine.all.order(:name)

    if @offer.update(offer_params)
      # selected_wine = Wine.find(@offer.wine_id)
      # @offer.update(wine_image_path: selected_wine.image_path)
      redirect_to caviste_offers_path, notice: "L'offre a été mise à jour avec succès."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    # set_offer
    if @offer.destroy # Supprime l'offre de la base de données
      redirect_to caviste_offers_path, notice: "L'offre a été supprimé avec succès."
    else
      redirect_to caviste_offer_path(@offer), alert: "Nous n'avons pas pu supprimer l'offre"
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:user_id, :wine_id, :quantity, :price, :address, :delivery, :url, :offer_photo)
  end
end

class HelpOffersController < ApplicationController

  def index
    @help_offers = HelpOffer.all
  end

  def new
    @help_offer = HelpOffer.new
  end

  def create
    @help_offer = HelpOffer.new(help_offer_params)
    @help_offer.user = current_user
    if @help_offer.save
      redirect_to @help_offer
    end
  end

  def show
    @help_offer = HelpOffer.find(params[:id])
  end

  private
    def help_offer_params
      params.require(:help_offer).permit(:description)
    end
end

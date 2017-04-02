class HelpOffersController < ApplicationController
  before_action :authenticate_user!
  before_filter :require_permission, only: :edit

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
      params.require(:help_offer).permit(:description, :help_type_id)
    end

    def require_permission
      if current_user != HelpOffer.find(params[:id]).user
        redirect_to root_path
      end
    end
end

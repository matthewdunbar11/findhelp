class HelpRequestsController < ApplicationController
    before_action :authenticate_user!

    def new
        @help_request = HelpRequest.new
    end

    def create
        @help_request = HelpRequest.new(help_offer_params)
        @help_request.user = current_user

        if @help_request.save
            redirect_to @help_request
        end
    end

    def show
        @help_request = HelpRequest.find(params[:id])
    end
    private
        def help_offer_params
            params.require(:help_request).permit(:description, :help_type_id)
        end
end

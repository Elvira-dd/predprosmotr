class Admin::SubscriptionsController < ApplicationController
    load_and_authorize_resource
    before_action :set_subscription, only: %i[ show edit update destroy ]
  
    def index
      @subscriptions = Subscription.all
    end
  
    def new
      @subscription = Subscription.new
    end
  
    def edit
    end
  
    def create
      @subscription = Subscription.new(subscription_params)
  
      respond_to do |format|
        if @subscription.save
          format.html { redirect_to admin_subscriptions_path, notice: "Subscription was successfully created." }
        else
          format.html { render :new, status: :unprocessable_entity }
        end
      end
    end
  
    def update
      respond_to do |format|
        if @subscription.update(subscription_params)
          format.html { redirect_to admin_subscriptions_path, notice: "Subscription was successfully updated." }
        else
          format.html { render :edit, status: :unprocessable_entity }
        end
      end
    end
  
    def destroy
      @subscription.destroy!
  
      respond_to do |format|
        format.html { redirect_to admin_subscriptions_path, status: :see_other, notice: "Fill was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      def set_subscription
        @subscription = Subscription.find(params[:id])
      end
  
      def subscription_params
        params.require(:subscription).permit(:email)
      end
  end
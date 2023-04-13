class SubscriptionsController < ApplicationController
 
  # GET /subscriptions
  def index
     subscriptions = Subscription.all

    render json:  subscriptions
  end

  # GET /subscriptions/1
  def show
    subscription = Subscription.find(params[:id])
    render json:  subscription
  end

  # POST /subscriptions
  def create
     subscription = Subscription.new(subscription_params)

    if  subscription.save
      render json:  subscription, status: :created, location:  subscription
    else
      render json:  subscription.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subscriptions/1
  def update
    subscription = Subscription.find(params[:id])
    if  subscription.update(subscription_params)
      render json:  subscription
    else
      render json:  subscription.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subscriptions/1
  def destroy
    subscription = Subscription.find(params[:id])
     subscription.destroy
     head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscription
       subscription = Subscription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subscription_params
      params.require(:subscription).permit(:category_id, :user_id)
    end
end

class MembersController < ApplicationController

  # GET /members
  def index
    # @members = Member.all
    # @subscription = Subscription.all
    @both = Subscription.joins(:members).select("Subscriptions.name AS subscription, *")

    render json: @both
  end

end

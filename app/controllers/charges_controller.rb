class ChargesController < ApplicationController
def create

  @amount = 1

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => user.id,
    :amount      => @amount,
    :description => 'Chatbot',
    :currency    => 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to root
end
end

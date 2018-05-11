class ChargesController < ApplicationController


  def create
    @post.price = Post.find_by(id: params[:id]).price
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @post.price,
      :description => 'Chatbot',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root
  end
end

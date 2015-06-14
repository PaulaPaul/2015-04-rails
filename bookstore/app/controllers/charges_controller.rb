class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents, USD

    customer = Stripe::Customer.create(
      :email => current_student.email,
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :description => 'Rails bookstore customer charge',
      :currency    => 'usd',
      :amount      => session[:total_charges].to_i     
    )

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to charges_path
  end
end

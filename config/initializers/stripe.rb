Rails.configuration.stripe = {
  :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
  :secret_key      => ENV['STRIPE_SECRET_KEY']
}

puts Rails.configuration.stripe[:publishable_key]

# Stripe.publishable_key = Rails.configuration.stripe[:publishable_key]
Stripe.api_key = Rails.configuration.stripe[:secret_key]

# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Terminal
    class ConnectionTokenService < StripeService
      class CreateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The id of the location that this connection token is scoped to. If specified the connection token will only be usable with readers assigned to that location, otherwise the connection token will be usable with all readers. Note that location scoping only applies to internet-connected readers. For more details, see [the docs on scoping connection tokens](https://docs.stripe.com/terminal/fleet/locations-and-zones?dashboard-or-api=api#connection-tokens).
        sig { returns(T.nilable(String)) }
        attr_accessor :location
        sig { params(expand: T.nilable(T::Array[String]), location: T.nilable(String)).void }
        def initialize(expand: nil, location: nil); end
      end
      # To connect to a reader the Stripe Terminal SDK needs to retrieve a short-lived connection token from Stripe, proxied through your server. On your backend, add an endpoint that creates and returns a connection token.
      sig {
        params(params: T.any(::Stripe::Terminal::ConnectionTokenService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::ConnectionToken)
       }
      def create(params = {}, opts = {}); end
    end
  end
end
require 'transbank/sdk/onepay/requests/request'
require 'transbank/sdk/onepay/utils/jsonify'

module Transbank
  module Onepay
    class RefundCreateRequest
      # TODO: Since [Request] already includes JSONifier, maybe that require, include can be deleted
      include Request, Utils::JSONifier

      attr_accessor :nullify_amount
      attr_accessor :occ
      attr_accessor :external_unique_number
      attr_accessor :authorization_code
      attr_accessor :issued_at
      attr_accessor :signature
      # rep_par_eun
      # rep_par_occ
      # rep_par_iat
      # rep_par_sig
      def initialize(nullify_amount = nil,
                     occ = nil,
                     external_unique_number = nil,
                     authorization_code = nil,
                     issued_at = nil,
                     signature = nil)
        @nullify_amount = nullify_amount
        @occ = occ
        @external_unique_number = external_unique_number
        @authorization_code = authorization_code
        @issued_at = issued_at
        @signature = signature
      end
    end
  end
end
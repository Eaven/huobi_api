module HuobiApi
  module Accounts
    def accounts
      endpoint = "/v1/account/accounts"
      get(endpoint, {})
    end

    def balances(id)
      options ={
        'account-id': id
      }

      endpoint = "/v1/account/accounts/#{id}/balance"
      get(endpoint, options)
    end
  end
end

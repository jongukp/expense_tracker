# frozen_string_literal: true

require 'rack/test'
require 'json'

# ExpenseTracker
module ExpenseTracker
  RSpec.describe 'Expense Tracker API' do
    include Rack::Test::Methods

    it 'record submitted expenses' do
      coffee = {
        'payee' => 'Starbucks',
        'amount' => 5.75,
        'date' => '2017-06-10'
      }
      post '/expenses', JSON.generate(coffee)
    end
  end
end

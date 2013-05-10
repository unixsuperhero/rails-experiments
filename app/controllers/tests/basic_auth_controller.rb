class Tests::BasicAuthController < ApplicationController

  http_basic_authenticate_with name: 'guest',
                               password: 'guest',
                               only: :private

end

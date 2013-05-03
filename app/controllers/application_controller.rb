class ApplicationController < ActionController::Base
  protect_from_forgery

  expose(:refactoring_patterns) {
    Dir.glob('./app/models/refactor/*/').map do |file|
      file.split('/').last
    end
  }
end

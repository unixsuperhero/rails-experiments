class RefactorController < ApplicationController
  expose(:name) { params[:name] }
  expose(:klass) { "refactor/#{name}".classify.constantize }

  expose(:patterns) {
    Dir.glob('./app/models/refactor/*/').map do |file|
      file.split('/').last
    end
  }
end

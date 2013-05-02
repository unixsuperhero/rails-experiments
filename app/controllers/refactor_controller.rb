class RefactorController < ApplicationController
  expose(:name) { params[:name] }
  expose(:klass) { "refactor/#{name}".classify.constantize }
end

class ApplicationController < ActionController::Base
  protect_from_forgery

  expose(:section) { Section.new(controller_path) }
  expose(:recent_posts) { BlogSection.new('blog/posts').files.first(5) }

  expose(:refactoring_patterns) {
    Dir.glob('./app/models/refactor/*/').map do |file|
      file.split('/').last
    end
  }
end

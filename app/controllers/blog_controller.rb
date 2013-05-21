class BlogController < ApplicationController

  expose(:posts) {
    BlogSection.new('blog/posts').files.sort{|a,b|
      b.path[/\d\d*/].to_i <=> a.path[/\d\d*/].to_i
    }
  }

end

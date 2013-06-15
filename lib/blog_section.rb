class BlogSection < Section
  def link_class
    BlogLink
  end

  def files
    super
    @blog_files ||= @files.sort{|a,b|
      b.path[/\d\d*/].to_i <=> a.path[/\d\d*/].to_i
    }
  end
end

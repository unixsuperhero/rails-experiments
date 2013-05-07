class BlogLink < Link
  def title
    @title ||=  File.basename(file, ext).sub(/^\d+-/, '').titleize
  end
end

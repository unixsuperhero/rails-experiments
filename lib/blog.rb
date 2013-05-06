class Blog

class << self
  def views
    './app/views'
  end

  def post_dir
    "#{views}/blog/posts"
  end

  def posts
    Dir.glob("#{post_dir}/*")
  end

  def rename_posts_2
    posts.map do |f|
      title = IO.readlines(f).find{|l|
        l =~ /<title>/
      }.downcase
      title.gsub!(/[^a-z0-9]*\s*<.?title>\s*[^a-z0-9]*/i, '')
      title.gsub!(/[^a-z0-9]+/i, '_')

      nf = "#{File.dirname(f)}/#{title}.haml"

      [ '-------'             ,
        "before: #{f}"        ,
        "after : #{nf}"       ,
        "File.rename('#{f}', '#{nf}')" ]
      File.rename(f, nf)
    end
  end
end # class << self

end

class Link
  def initialize(dir,new_root=nil)
    @path = dir.sub(root, '')
    @root = new_root if new_root.present?
  end

  def splat
    [ title, href ]
  end

  def link
    splat
  end

  def file
    @path
  end

  def ext
    @ext ||= File.extname(file)
  end

  def title
    @title ||=  File.basename(file, ext).titleize
  end

  def href
    @href ||= file.sub(%r{#{ext}$}, '')
  end

  def file?
    File.file? [root,file].join
  end

  def directory?
    File.directory? [root,file].join
  end

  def root
    @root ||= './app/views/'
  end
end

class Section
  attr_accessor :dir
  def initialize(dir)
    @base = dir.sub(%r{^/*},'/')
  end

  def files
    @files ||= Dir.glob(glob).map{|x| File.basename(x, '.haml') }
  end

private

  def root; './app/views'; end
  def glob; [root,@base,'/*'].join; end
end

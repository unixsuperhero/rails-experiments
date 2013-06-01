class Section
  attr_accessor :dir
  def initialize(dir)
    @base = dir
  end

  def link_class
    Link
  end

  def files
    @files ||= Dir.glob(file_glob).keep_if{|f|
        File.file?(f) && f[%r{/index(\.h.ml){1,2}$}i].blank? && File.basename(f)[0] != '_'
      }.map{|f|
        link_class.new(f)
      }
  end

  def sections
    @sections ||= Dir.glob(section_glob).map{|s|
        section = File.dirname(s)
        link_class.new(section,section_root)
      }
  end

private

  def root; './app/views/'; end
  def section_root; [root,@base].join; end
  def file_glob; [root,@base,'/*'].join; end
  def section_glob; [root,@base,'/*/**/index*'].join; end
end

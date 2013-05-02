require 'haml'

class Refactor
  def self.pattern_name(v=nil)
    return @name if v.nil?
    @name = v
  end
  def self.steps(v=nil)
    return [].tap{|steps|
      @steps.each_with_index{|s,i|
        steps << {
          name: s.name,
          description: s.description,
          filenames: s.filenames(i)
        }
      }
    } if v.nil?
    @steps = v
  end
  def self.motivation(v=nil)
    return @motivation if v.nil?
    @motivation = Haml::Engine.new(v).render
  end

  class Step
    attr_accessor :name, :description
    def initialize(args)
      args.each{|k,v| instance_variable_set "@#{k}".to_sym, v }
    end

    def refactor_name
      @refactor.to_s.split('::').last
    end

    def step_no(i)
      sprintf('%.3d', i)
    end

    def filename(i,ab=:a)
      "./app/models/refactor/#{refactor_name.underscore}/step_#{step_no(i)}_#{ab}.rb"
    end

    def filenames(i)
      [
        filename(i),   # "./app/models/refactor/#{refactor_name.underscore}/step_#{step_no(i)}_a.rb",
        filename(i,:b) # "./app/models/refactor/#{refactor_name.underscore}/step_#{step_no(i)}_b.rb"
      ]
    end
  end
end

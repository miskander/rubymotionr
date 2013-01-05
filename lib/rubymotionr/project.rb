module Rubymotionr
  class Project

    attr_reader :gem_prereqs, :path

    def initialize(path)
      @path = path
      #TODO: Find, parse and return gem prereqs
      #TODO: Consider CocoPods
      #@gem_prereqs = get_prereqs
    end

    def self.is_rubymotion_app?(path)
      rakefile = File.read(path)
      rakefile.include?(%{require 'motion/project'})
    end
  end
end
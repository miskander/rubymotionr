module Rubymotionr
  class Repo

    attr_reader :path, :projects

    def initialize(path)
      @path = path
      @projects = find_projects(path)
    end

    private
    def find_projects(path)
      Dir.glob(File.join(path, "**/Rakefile")).collect { |loc|
        Project.new(loc.gsub("Rakefile", "")) if Project.is_rubymotion_app?(loc)
      }
    end
  end
end
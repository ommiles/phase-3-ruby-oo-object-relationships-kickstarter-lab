class ProjectBacker
    attr_reader :project, :backer
    @@all = []
    def initialize(project, backer)
        @project, @backer = project, backer
        @@all << self
    end

    def self.all
        @@all
    end
end
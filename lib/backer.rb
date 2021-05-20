class Backer

    attr_reader :name

    # takes a name on initialization
    # name accessible through an attribute reader
    def initialize(name)
        @name = name
    end

    def back_project(project)
        # accepts a project as an argument 
        # creates a new ProjectBacker instance
        # project is associated with this backer
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # returns an array of projects associated with this Backer instance
        ProjectBacker.all.select { |pb| pb.backer == self }.collect { |pb| pb.project }
    end
end
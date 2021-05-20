class Project

    attr_reader :title

    # takes a title on initialization
    # title accessible through an attribute reader
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        # accepts a backer as an argument
        # instantiates a new ProjectBacker
        # backer is associated with this project
        ProjectBacker.new(self, backer)
    end

    def backers
        # returns an array of backers associated with this Project instance
        ProjectBacker.all.select { |pb| pb.project == self }.collect { |pb| pb.backer }
    end
end
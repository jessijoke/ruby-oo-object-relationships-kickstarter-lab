class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def all_projects
        ProjectBacker.all.select { |project| project.project == self }
    end

    def backers
        all_projects.map { |m| m.backer }
    end
end
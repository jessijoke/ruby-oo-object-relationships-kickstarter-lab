class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def all_projects
        ProjectBacker.all.select { |project| project.backer == self }
    end

    def backed_projects
        all_projects.map { |m| m.project }
    end
end
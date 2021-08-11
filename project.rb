class Project
    attr_accessor :name, :description, :owner, :tasks
    def initialize(name,description, owner)
        @name = name
        @description = description
        @owner = owner
        @tasks =[]
    end

    def elevator_pitch
        "#{@name}, #{@description}"
    end

    def add_tasks(task)
        @tasks.push(task)
    end

    def print_tasks
        @tasks.each { |task| puts task}
    end
end

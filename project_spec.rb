require_relative 'project'
RSpec.describe Project do
    before(:each) do
        # updated this block to create two projects
        @project1 = Project.new('Project 1', 'description 1', 'John Doe')
        @project2 = Project.new('Project 2', 'description 2', 'Johnny Bravo')
    end
    it 'has a getter and setter for name attribute' do
        @project1.name = "Changed Name"
        expect(@project1.name).to eq("Changed Name")
    end
    it 'has a getter and setter for owner attribute' do
        @project1.owner = "Owner name"
        expect(@project1.owner).to eq("Owner name")
    end
    it 'has a method elevator_pitch to explain name and description' do
        expect(@project1.elevator_pitch).to eq("Project 1, description 1")
        expect(@project2.elevator_pitch).to eq("Project 2, description 2")
    end
    it 'has a method that returns the tasks for each project' do
        expect(@project1.tasks).to eq([])
    end
    it 'has a method that pushes a single task to the tasks' do
        expect(@project1.tasks).to eq([])
    end
    it 'has a method that prints each task in your project' do
        expect(@project1.task).to eq()
    end
end
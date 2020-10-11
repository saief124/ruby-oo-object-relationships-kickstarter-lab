require 'pry'
require_relative './project_backer.rb'


class Backer
    attr_accessor :name, :project
    attr_reader 
    
    def initialize (name)
        @name = name
        @project = project
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
      matching_project= ProjectBacker.all.select{|pr| pr.backer == self}
      matching_project.map{|pro| pro.project}
    end
end
require_relative './project_backer.rb'
require 'pry'


class Project
    attr_accessor :title, :backer #,:backer_instance
    attr_reader 
    
    def initialize (title)
        @title= title
        @backer = backer
    end

    def add_backer (backer)
       ProjectBacker.new(self, backer)
    end

    def backers
        matching_backer= ProjectBacker.all.select{|bkr| bkr.project == self}
        matching_backer.map{|b| b.backer}
    end
end
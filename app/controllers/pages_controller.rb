class PagesController < ApplicationController
    def home
    @basic_plan = Plan.find(1)
    @pro_plan = Plan.find(2)
    end
    
    #adding the about page
    def about
    end
    
    
end

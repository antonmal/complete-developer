class PagesController < ApplicationController
    def home
        @basic_plan = Plan.find_by(name: 'basic')
        @pro_plan = Plan.find_by(name: 'pro')
    end
    
    def about
    end
end

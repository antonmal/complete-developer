module UsersHelper
    
    def job_title_icon
        if @user.profile.job_title == "Developer"
           return '<span class="fa-stack">
                    <i class="fa fa-circle fa-stack-2x grey-background"></i>
                    <i class="fa fa-code fa-stack-1x fa-inverse"></i>
                    </span>'.html_safe
        end
        if @user.profile.job_title == "Entrepreneur"
           return '<span class="fa-stack">
                    <i class="fa fa-circle fa-stack-2x grey-background"></i>
                    <i class="fa fa-lightbulb-o fa-stack-1x fa-inverse"></i>
                    </span>'.html_safe
        end
        if @user.profile.job_title == "Investor"
           return '<span class="fa-stack">
                    <i class="fa fa-circle fa-stack-2x grey-background"></i>
                    <i class="fa fa-usd fa-stack-1x fa-inverse"></i>
                    </span>'.html_safe
        end
        return "WRONG JOB TITLE! "
    end
    
end
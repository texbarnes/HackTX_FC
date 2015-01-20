module UserStepsHelper
    
    def generateTwitForm
        @twitForm = "<div class='row'> <div class='form-group col-md-6'> <%= f.label 'Twitter' %> <%= f.check_box :showTwit %> </div> </div>".html_safe
    end    
end

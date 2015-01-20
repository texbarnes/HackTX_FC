module UserStepsHelper
    
    def generateDivs
        @startDivs = "<div class='row'> <div class='form-group col-md-6'>".html_safe
        @endDivs = "</div> </div>".html_safe
    end    
end

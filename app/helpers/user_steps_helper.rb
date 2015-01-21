module UserStepsHelper
    
    def getParams(user)
        @pars = Hash.new
        if(!(user.twitter == ""))
            @pars['Twitter'] = ':showTwit'
        end
        
        if(!(user.facebook == ""))
            @pars['Facebook'] = ':showFace'
        end
        
        if(!(user.linkedin == ""))
            @pars['LinkedIn'] = ':showLink'
        end
        
        if(!(user.phone == ""))
            @pars['Phone'] = ':showP'
        end
        
        if(!(user.email == ""))
            @pars['Email'] = ':showE'
        end
        
        if(!(user.twitter == ""))
            @pars['Website'] = ':showWeb'
        end   
    end    
end

module UserStepsHelper
    
    def getParams(user)
        @pars = Hash.new
        if(!(user.twitter == ""))
            @pars['Twitter'] = :showTwit
        end
        
        if(!(user.facebook == ""))
            @pars['Facebook'] = :showFace
        end
        
        if(!(user.linkedin == ""))
            @pars['LinkedIn'] = :showLink
        end
        
        if(!(user.phone == ""))
            @pars['Phone'] = :showP
            @pars['Instant Text'] = :showText
        end
        
        if(!(user.email == ""))
            @pars['Email'] = :showE
        end
    end    
end

class Role  < ActiveRecord::Base
    has_many :auditions

    def actors
        auditions.map do |auditions|
            auditions.actors
        end 
    end  

    def locations
        auditions.map do |auditions|
            auditions.locations
        end
    end

    def lead 
        lead = auditions.find do |auditions|
            audition.hired 
        end 
        
        if (lead == nil) 
            puts "no actor .."
        else
            lead
        end 
    end 

    def understudy
        lead = nil
        understudy = nil
        auditions.each do |audition|
           if audition.hired
                if lead == nil
                lead = audition
                elsif understudy == nil
                    understudy = audition
                end 
            end
        end

        if (understudy == nil)
            puts "no something"
        else 
            understudy
        end 
    end
end 
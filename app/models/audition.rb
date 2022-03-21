class Audition < ActiveRecord::Base
    belongs_to :role

    def call_back
        self.hired = true
        self.save
    end
end

##bunlde exec rake db:create_migration NAME = create_auditions

##think maybe my next step would be figuring out the assications btwn roles and auditions. also not sure if my belongs to and has many part is correct.didnt even touch the callback portion, not sure how to do tht. think i might have started the Role#actors returns an array of names from the actors associated with this role part w the @@actors in the role tab. but not sure. think i need to add another thing to the table w the hired part. tried to do that then db migrate and it didnt work
## also tried to do the @@lcation w an empty array but not sure that is done correctly. no idea about the lead or understudy part
Role.destroy_all 
Audition.destroy_all

role1 = Role.create(character_name: "bridget")

audition1 = Audition.create(actor: "so", location: "nyc", phone: "123", hired: false, role_id: role1.id)
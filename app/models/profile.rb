class Profile < ActiveRecord::Base
    #Active record assotiations
    #Fiecare profil ii apartine unui utilizator
    belongs_to :user
end    
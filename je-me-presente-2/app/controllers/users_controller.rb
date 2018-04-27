class UsersController < ApplicationController
    def new
        @message_erreur = params["erreur"]
    end

    def create
        #insertion dans la bdd
        
        user = User.new
        message = "ERREUR D'INSERTION : USERNAME INVALIDE"
        #test de validiter
        if !params["username"].match(/\s/) || params["username"] != ""
            user.username = params["username"]
            user.bio = params["bio"]
            user.save
            validation = user.valid?
            
            if validation
                #valid
                id = user.id
                #redirection vers la root
                redirect_to "/users/#{id}"
            else
                #invalid
            redirect_to "/new/#{message}"
    
            end
        else
            #invalid
            redirect_to "/new/#{message}"
        end
        
        
    end

    def show
        #recuper l'id et rechercher dans la base
        
        if (params[:id_user].to_i != 0)
            user = User.find(params[:id_user])
        elsif (params[:id_user].to_s != "")
            user = User.find_by(username: params[:id_user].to_s)
        else
            redirect_to "/erreur"
        end

        @username = user.username
        @bio = user.bio
    end

    def erreur

    end
end

#Olivier Lafleur 20 octobre 2021
class PublicController < ApplicationController   
    def home 
        respond_to do |format|
            format.html
        end         
    end
   
 end
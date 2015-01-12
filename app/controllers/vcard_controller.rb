require 'vpim/vcard'

class VcardController < ApplicationController
  
  def new
  end
  
  def show
  
  @contact = User.find(params[:id])  
	
	card = Vpim::Vcard::Maker.make2 do |maker|
  			
		maker.add_name do |name|
    			name.prefix = ''
    			name.given = @contact.first
    			name.family = @contact.last
		end

		maker.add_tel(@contact.phone)

		maker.add_email(@contact.email) 
		
		maker.add_url("www.ForeverCard.co/" + @contact.username)

	end

	send_data card.to_s, :filename => "contact.vcf"	
	
  end
end
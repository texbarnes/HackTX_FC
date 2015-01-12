require 'vpim/vcard'

class VcardController < ApplicationController
  def show
  
  @contact = User.find_by_id(params[:id])  
	
	card = Vpim::Vcard::Maker.make2 do |maker|
  			
		maker.add_name do |name|
    			name.prefix = ''
    			name.given = @contact.first
    			name.family = @contact.last
		end

		maker.add_tel(@contact.phone)

		maker.add_email(@contact.email) { |e| e.location = 'work' }

	end

	send_data card.to_s, :filename => "contact.vcf"	
  end

redirect_to @user

end

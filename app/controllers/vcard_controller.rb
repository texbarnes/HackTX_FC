class VcardController < ApplicationController
  def view
  end

def vcard
	@user = User.find(params[:id])
	
	card = Vpim::Vcard::Maker.make2 do |maker|
  			
		maker.add_name do |name|
    			name.prefix = ''
    			name.given = @user.first
    			name.family = @user.last
		end

		maker.add_tel(@user.phone)

		maker.add_email(@user.email) { |e| e.location = 'work' }

	end

	send_data card.to_s, :filename => "contact.vcf"	
end

end

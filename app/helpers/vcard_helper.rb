require 'vpim/vcard'

module VcardHelper

#dynamically creates a vcard
def vcard(user)
	
	card = Vpim::Vcard::Maker.make2 do |maker|
  			
		maker.add_name do |name|
    			name.prefix = ''
    			name.given = user.first
    			name.family = user.last
		end

		maker.add_tel(user.phone)

		maker.add_email(user.email) { |e| e.location = 'work' }

	end

	send_data card.to_s, :filename => user.first + user.last + ".vcf"	
end

end

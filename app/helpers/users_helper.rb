module UsersHelper
    def phone_number_link(text)
        sets_of_numbers = text.scan(/[0-9]+/)
        number = "+1-#{sets_of_numbers.join('-')}"
        link_to image_tag("http://i59.tinypic.com/5k350g.png"), "tel:#{number}"
    end
    
    def text_link(text)
        sets_of_numbers = text.scan(/[0-9]+/)
        number = "+1-#{sets_of_numbers.join('-')}"
        link_to image_tag("http://i58.tinypic.com/2njbuw7.png"), "sms:#{number}"
    end
end

module UsersHelper
    def phone_number_link(text)
        sets_of_numbers = text.scan(/[0-9]+/)
        number = "+1-#{sets_of_numbers.join('-')}"
        link_to image_tag("http://i57.tinypic.com/kf00tk.png"), "tel:#{number}"
    end
end

{"changed":true,"filter":false,"title":"users_helper.rb","tooltip":"/app/helpers/users_helper.rb","value":"module UsersHelper\n    def phone_number_link(text)\n        sets_of_numbers = text.scan(/[0-9]+/)\n        number = \"+1-#{sets_of_numbers.join('-')}\"\n        link_to image_tag(\"http://i57.tinypic.com/kf00tk.png\"), \"tel:#{number}\"\n    end\n    \n    def email_link(mail)\n        link_to image_tag(\"http://i57.tinypic.com/kf00tk.png\"), \"tel:#{number}\"\n    end\nend\n","undoManager":{"mark":9,"position":41,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":18},"end":{"row":1,"column":0},"action":"insert","lines":["",""]},{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":1,"column":4},"end":{"row":5,"column":4},"action":"insert","lines":["def phone_number_link(text)","    sets_of_numbers = text.scan(/[0-9]+/)","    number = \"+1-#{sets_of_numbers.join('-')}\"","    link_to text, \"tel:#{number}\"","  en"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":4},"end":{"row":5,"column":5},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":2},"end":{"row":5,"column":4},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]},{"start":{"row":3,"column":0},"end":{"row":3,"column":4},"action":"insert","lines":["    "]},{"start":{"row":4,"column":0},"end":{"row":4,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":4,"column":19},"end":{"row":4,"column":20},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":4,"column":18},"end":{"row":4,"column":19},"action":"remove","lines":["x"]}]}],[{"group":"doc","deltas":[{"start":{"row":4,"column":17},"end":{"row":4,"column":18},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":4,"column":16},"end":{"row":4,"column":17},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":4,"column":16},"end":{"row":4,"column":62},"action":"insert","lines":["image_tag(\"http://i57.tinypic.com/kf00tk.png\")"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":7},"end":{"row":6,"column":0},"action":"insert","lines":["",""]},{"start":{"row":6,"column":0},"end":{"row":6,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":4},"end":{"row":7,"column":0},"action":"insert","lines":["",""]},{"start":{"row":7,"column":0},"end":{"row":7,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":4},"end":{"row":11,"column":7},"action":"insert","lines":["def phone_number_link(text)","        sets_of_numbers = text.scan(/[0-9]+/)","        number = \"+1-#{sets_of_numbers.join('-')}\"","        link_to image_tag(\"http://i57.tinypic.com/kf00tk.png\"), \"tel:#{number}\"","    end"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":29},"end":{"row":7,"column":30},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":28},"end":{"row":7,"column":29},"action":"remove","lines":["x"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":27},"end":{"row":7,"column":28},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":26},"end":{"row":7,"column":27},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":26},"end":{"row":7,"column":27},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":27},"end":{"row":7,"column":28},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":28},"end":{"row":7,"column":29},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":29},"end":{"row":7,"column":30},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":8,"column":8},"end":{"row":9,"column":50},"action":"remove","lines":["sets_of_numbers = text.scan(/[0-9]+/)","        number = \"+1-#{sets_of_numbers.join('-')}\""]}]}],[{"group":"doc","deltas":[{"start":{"row":8,"column":4},"end":{"row":8,"column":8},"action":"remove","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":8,"column":0},"end":{"row":8,"column":4},"action":"remove","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":31},"end":{"row":8,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":19},"end":{"row":7,"column":20},"action":"remove","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":18},"end":{"row":7,"column":19},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":17},"end":{"row":7,"column":18},"action":"remove","lines":["b"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":16},"end":{"row":7,"column":17},"action":"remove","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":15},"end":{"row":7,"column":16},"action":"remove","lines":["u"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":14},"end":{"row":7,"column":15},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":13},"end":{"row":7,"column":14},"action":"remove","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":12},"end":{"row":7,"column":13},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":11},"end":{"row":7,"column":12},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":10},"end":{"row":7,"column":11},"action":"remove","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":9},"end":{"row":7,"column":10},"action":"remove","lines":["h"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":8},"end":{"row":7,"column":9},"action":"remove","lines":["p"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":8},"end":{"row":7,"column":9},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":9},"end":{"row":7,"column":10},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":10},"end":{"row":7,"column":11},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":11},"end":{"row":7,"column":12},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":12},"end":{"row":7,"column":13},"action":"insert","lines":["l"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":9,"column":7},"end":{"row":9,"column":7},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1421872996949}
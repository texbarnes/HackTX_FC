{"changed":true,"filter":false,"title":"order_steps_helper.rb","tooltip":"/app/helpers/order_steps_helper.rb","value":"module OrderStepsHelper\n    \n    def getShipping(quantity)\n        if(quantity == 100)\n            @shipping = 6.99\n        elsif(quantity == 250)\n            @shipping = 9.99\n        else\n            @shipping = 12.99\n        end\n    end\n    \n    def getTax(orderAmount, shipping)\n        @tax = '0.00'\n    end\n    \n    def getTotal(orderAmount, shipping, tax)\n        @total = orderAmount + shipping + tax\n        @total = @total.round(2)\n    end \n    \n    def us_states\n    [\n      ['Alabama', 'AL'],\n      ['Alaska', 'AK'],\n      ['Arizona', 'AZ'],\n      ['Arkansas', 'AR'],\n      ['California', 'CA'],\n      ['Colorado', 'CO'],\n      ['Connecticut', 'CT'],\n      ['Delaware', 'DE'],\n      ['District of Columbia', 'DC'],\n      ['Florida', 'FL'],\n      ['Georgia', 'GA'],\n      ['Hawaii', 'HI'],\n      ['Idaho', 'ID'],\n      ['Illinois', 'IL'],\n      ['Indiana', 'IN'],\n      ['Iowa', 'IA'],\n      ['Kansas', 'KS'],\n      ['Kentucky', 'KY'],\n      ['Louisiana', 'LA'],\n      ['Maine', 'ME'],\n      ['Maryland', 'MD'],\n      ['Massachusetts', 'MA'],\n      ['Michigan', 'MI'],\n      ['Minnesota', 'MN'],\n      ['Mississippi', 'MS'],\n      ['Missouri', 'MO'],\n      ['Montana', 'MT'],\n      ['Nebraska', 'NE'],\n      ['Nevada', 'NV'],\n      ['New Hampshire', 'NH'],\n      ['New Jersey', 'NJ'],\n      ['New Mexico', 'NM'],\n      ['New York', 'NY'],\n      ['North Carolina', 'NC'],\n      ['North Dakota', 'ND'],\n      ['Ohio', 'OH'],\n      ['Oklahoma', 'OK'],\n      ['Oregon', 'OR'],\n      ['Pennsylvania', 'PA'],\n      ['Puerto Rico', 'PR'],\n      ['Rhode Island', 'RI'],\n      ['South Carolina', 'SC'],\n      ['South Dakota', 'SD'],\n      ['Tennessee', 'TN'],\n      ['Texas', 'TX'],\n      ['Utah', 'UT'],\n      ['Vermont', 'VT'],\n      ['Virginia', 'VA'],\n      ['Washington', 'WA'],\n      ['West Virginia', 'WV'],\n      ['Wisconsin', 'WI'],\n      ['Wyoming', 'WY']\n    ]\n    end\nend","undoManager":{"mark":98,"position":100,"stack":[[{"group":"doc","deltas":[{"start":{"row":19,"column":17},"end":{"row":19,"column":18},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":18},"end":{"row":19,"column":19},"action":"insert","lines":["*"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":19},"end":{"row":19,"column":20},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":20},"end":{"row":19,"column":21},"action":"insert","lines":["1"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":21},"end":{"row":19,"column":22},"action":"insert","lines":["0"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":22},"end":{"row":19,"column":23},"action":"insert","lines":["0"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":23},"end":{"row":19,"column":24},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":24},"end":{"row":19,"column":25},"action":"insert","lines":["="]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":25},"end":{"row":19,"column":26},"action":"insert","lines":["="]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":26},"end":{"row":19,"column":27},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":27},"end":{"row":19,"column":28},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":28},"end":{"row":19,"column":29},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":29},"end":{"row":19,"column":30},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":30},"end":{"row":19,"column":31},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":31},"end":{"row":19,"column":32},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":32},"end":{"row":19,"column":33},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":32},"end":{"row":19,"column":33},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":27},"end":{"row":19,"column":28},"action":"insert","lines":["@"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":33},"end":{"row":19,"column":34},"action":"insert","lines":["."]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":34},"end":{"row":19,"column":35},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":35},"end":{"row":19,"column":36},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":36},"end":{"row":19,"column":37},"action":"insert","lines":["u"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":37},"end":{"row":19,"column":38},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":38},"end":{"row":19,"column":39},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":39},"end":{"row":19,"column":41},"action":"insert","lines":["()"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":40},"end":{"row":19,"column":41},"action":"insert","lines":["0"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":42},"end":{"row":19,"column":43},"action":"remove","lines":[")"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":41},"end":{"row":19,"column":42},"action":"remove","lines":[")"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":40},"end":{"row":19,"column":41},"action":"remove","lines":["0"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":39},"end":{"row":19,"column":40},"action":"remove","lines":["("]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":38},"end":{"row":19,"column":39},"action":"remove","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":37},"end":{"row":19,"column":38},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":36},"end":{"row":19,"column":37},"action":"remove","lines":["u"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":35},"end":{"row":19,"column":36},"action":"remove","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":34},"end":{"row":19,"column":35},"action":"remove","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":33},"end":{"row":19,"column":34},"action":"remove","lines":["."]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":32},"end":{"row":19,"column":33},"action":"remove","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":31},"end":{"row":19,"column":32},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":30},"end":{"row":19,"column":31},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":29},"end":{"row":19,"column":30},"action":"remove","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":28},"end":{"row":19,"column":29},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":27},"end":{"row":19,"column":28},"action":"remove","lines":["@"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":26},"end":{"row":19,"column":27},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":25},"end":{"row":19,"column":26},"action":"remove","lines":["="]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":24},"end":{"row":19,"column":25},"action":"remove","lines":["="]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":23},"end":{"row":19,"column":24},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":22},"end":{"row":19,"column":23},"action":"remove","lines":["0"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":21},"end":{"row":19,"column":22},"action":"remove","lines":["0"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":20},"end":{"row":19,"column":21},"action":"remove","lines":["1"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":19},"end":{"row":19,"column":20},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":18},"end":{"row":19,"column":19},"action":"remove","lines":["*"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":17},"end":{"row":19,"column":18},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":16},"end":{"row":19,"column":17},"action":"remove","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":15},"end":{"row":19,"column":16},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":14},"end":{"row":19,"column":15},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":13},"end":{"row":19,"column":14},"action":"remove","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":12},"end":{"row":19,"column":13},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":11},"end":{"row":19,"column":12},"action":"remove","lines":["@"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":10},"end":{"row":19,"column":11},"action":"remove","lines":["("]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":9},"end":{"row":19,"column":10},"action":"remove","lines":["f"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":8},"end":{"row":19,"column":9},"action":"remove","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":4},"end":{"row":19,"column":8},"action":"remove","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":0},"end":{"row":19,"column":4},"action":"remove","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":18,"column":32},"end":{"row":19,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":45},"end":{"row":13,"column":46},"action":"remove","lines":["5"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":44},"end":{"row":13,"column":45},"action":"remove","lines":["2"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":43},"end":{"row":13,"column":44},"action":"remove","lines":["8"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":42},"end":{"row":13,"column":43},"action":"remove","lines":["0"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":41},"end":{"row":13,"column":42},"action":"remove","lines":["."]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":40},"end":{"row":13,"column":41},"action":"remove","lines":["0"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":39},"end":{"row":13,"column":40},"action":"remove","lines":["*"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":38},"end":{"row":13,"column":39},"action":"remove","lines":[")"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":37},"end":{"row":13,"column":38},"action":"remove","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":36},"end":{"row":13,"column":37},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":35},"end":{"row":13,"column":36},"action":"remove","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":34},"end":{"row":13,"column":35},"action":"remove","lines":["p"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":33},"end":{"row":13,"column":34},"action":"remove","lines":["p"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":32},"end":{"row":13,"column":33},"action":"remove","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":31},"end":{"row":13,"column":32},"action":"remove","lines":["h"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":30},"end":{"row":13,"column":31},"action":"remove","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":29},"end":{"row":13,"column":30},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":28},"end":{"row":13,"column":29},"action":"remove","lines":["+"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":27},"end":{"row":13,"column":28},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":26},"end":{"row":13,"column":27},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":25},"end":{"row":13,"column":26},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":24},"end":{"row":13,"column":25},"action":"remove","lines":["u"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":23},"end":{"row":13,"column":24},"action":"remove","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":22},"end":{"row":13,"column":23},"action":"remove","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":21},"end":{"row":13,"column":22},"action":"remove","lines":["A"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":20},"end":{"row":13,"column":21},"action":"remove","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":19},"end":{"row":13,"column":20},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":18},"end":{"row":13,"column":19},"action":"remove","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":17},"end":{"row":13,"column":18},"action":"remove","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":16},"end":{"row":13,"column":17},"action":"remove","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":15},"end":{"row":13,"column":16},"action":"remove","lines":["("]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":15},"end":{"row":13,"column":16},"action":"insert","lines":["0"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":16},"end":{"row":13,"column":17},"action":"insert","lines":["."]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":17},"end":{"row":13,"column":18},"action":"insert","lines":["0"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":18},"end":{"row":13,"column":19},"action":"insert","lines":["0"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":15},"end":{"row":13,"column":16},"action":"insert","lines":["'"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":20},"end":{"row":13,"column":21},"action":"insert","lines":["'"]}]}]]},"ace":{"folds":[],"scrolltop":73,"scrollleft":0,"selection":{"start":{"row":13,"column":21},"end":{"row":13,"column":21},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":58,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1421358719184}
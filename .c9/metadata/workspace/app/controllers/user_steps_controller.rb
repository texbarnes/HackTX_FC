{"filter":false,"title":"user_steps_controller.rb","tooltip":"/app/controllers/user_steps_controller.rb","undoManager":{"mark":45,"position":45,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":49},"end":{"row":1,"column":0},"action":"insert","lines":["",""]},{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":1,"column":4},"end":{"row":2,"column":26},"action":"insert","lines":["include Wicked::Wizard","  steps :personal, :social"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":2},"end":{"row":2,"column":4},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":28},"end":{"row":2,"column":29},"action":"insert","lines":[","]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":29},"end":{"row":2,"column":30},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":30},"end":{"row":2,"column":31},"action":"insert","lines":[":"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":31},"end":{"row":2,"column":32},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":32},"end":{"row":2,"column":33},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":33},"end":{"row":2,"column":34},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":34},"end":{"row":2,"column":35},"action":"insert","lines":["p"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":35},"end":{"row":2,"column":36},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":36},"end":{"row":2,"column":37},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":37},"end":{"row":2,"column":38},"action":"insert","lines":["y"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":38},"end":{"row":3,"column":0},"action":"insert","lines":["",""]},{"start":{"row":3,"column":0},"end":{"row":3,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":4},"end":{"row":4,"column":0},"action":"insert","lines":["",""]},{"start":{"row":4,"column":0},"end":{"row":4,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":4,"column":4},"end":{"row":7,"column":3},"action":"insert","lines":["def show","  @user = current_user","  render_wizard","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":0},"end":{"row":5,"column":4},"action":"insert","lines":["    "]},{"start":{"row":6,"column":0},"end":{"row":6,"column":4},"action":"insert","lines":["    "]},{"start":{"row":7,"column":0},"end":{"row":7,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":7},"end":{"row":8,"column":0},"action":"insert","lines":["",""]},{"start":{"row":8,"column":0},"end":{"row":8,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":8,"column":4},"end":{"row":9,"column":0},"action":"insert","lines":["",""]},{"start":{"row":9,"column":0},"end":{"row":9,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":9,"column":4},"end":{"row":13,"column":3},"action":"insert","lines":["def update","  @user = current_user","  @user.attributes = params[:user]","  render_wizard @user","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":10,"column":0},"end":{"row":10,"column":4},"action":"insert","lines":["    "]},{"start":{"row":11,"column":0},"end":{"row":11,"column":4},"action":"insert","lines":["    "]},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"insert","lines":["    "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":7},"end":{"row":14,"column":0},"action":"insert","lines":["",""]},{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":14,"column":4},"end":{"row":15,"column":0},"action":"insert","lines":["",""]},{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":15,"column":4},"end":{"row":18,"column":3},"action":"insert","lines":["private","def redirect_to_finish_wizard","  redirect_to root_url, notice: \"Thanks for signing up.\"","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":16,"column":0},"end":{"row":16,"column":4},"action":"insert","lines":["    "]},{"start":{"row":17,"column":0},"end":{"row":17,"column":4},"action":"insert","lines":["    "]},{"start":{"row":18,"column":0},"end":{"row":18,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":24},"end":{"row":12,"column":25},"action":"remove","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":23},"end":{"row":12,"column":24},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":22},"end":{"row":12,"column":23},"action":"remove","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":21},"end":{"row":12,"column":22},"action":"remove","lines":["u"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":20},"end":{"row":12,"column":21},"action":"remove","lines":["@"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":19},"end":{"row":12,"column":20},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":18},"end":{"row":12,"column":19},"action":"remove","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":17},"end":{"row":12,"column":18},"action":"remove","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":16},"end":{"row":12,"column":17},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":15},"end":{"row":12,"column":16},"action":"remove","lines":["z"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":14},"end":{"row":12,"column":15},"action":"remove","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":13},"end":{"row":12,"column":14},"action":"remove","lines":["w"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":12},"end":{"row":12,"column":13},"action":"remove","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":11},"end":{"row":12,"column":12},"action":"remove","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":10},"end":{"row":12,"column":11},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":9},"end":{"row":12,"column":10},"action":"remove","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":8},"end":{"row":12,"column":9},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":7},"end":{"row":12,"column":8},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":6},"end":{"row":12,"column":7},"action":"remove","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":6},"end":{"row":12,"column":39},"action":"insert","lines":["redirect_to wizard_path(next_step"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":39},"end":{"row":12,"column":40},"action":"insert","lines":[")"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":12,"column":40},"end":{"row":12,"column":40},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1421710192689,"hash":"2be269f7ddc3bee0b355f5373ce8112fce7c39c1"}
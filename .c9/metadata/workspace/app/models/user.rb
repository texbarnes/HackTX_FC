{"filter":false,"title":"user.rb","tooltip":"/app/models/user.rb","undoManager":{"mark":21,"position":21,"stack":[[{"group":"doc","deltas":[{"start":{"row":51,"column":5},"end":{"row":52,"column":0},"action":"insert","lines":["",""]},{"start":{"row":52,"column":0},"end":{"row":52,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":52,"column":2},"end":{"row":53,"column":0},"action":"insert","lines":["",""]},{"start":{"row":53,"column":0},"end":{"row":53,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":53,"column":2},"end":{"row":64,"column":5},"action":"insert","lines":["devise :database_authenticatable, :registerable,","         :recoverable, :rememberable, :trackable, :validatable,","     :omniauthable, :omniauth_providers => [:digitalocean]","","  def self.from_omniauth(auth)","      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|","        user.provider = auth.provider","        user.uid = auth.uid","        user.email = auth.info.email","        user.password = Devise.friendly_token[0,20]","      end","  end"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":56},"end":{"row":55,"column":57},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":55},"end":{"row":55,"column":56},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":54},"end":{"row":55,"column":55},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":53},"end":{"row":55,"column":54},"action":"remove","lines":["c"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":52},"end":{"row":55,"column":53},"action":"remove","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":51},"end":{"row":55,"column":52},"action":"remove","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":50},"end":{"row":55,"column":51},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":49},"end":{"row":55,"column":50},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":48},"end":{"row":55,"column":49},"action":"remove","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":47},"end":{"row":55,"column":48},"action":"remove","lines":["g"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":46},"end":{"row":55,"column":47},"action":"remove","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":45},"end":{"row":55,"column":46},"action":"remove","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":45},"end":{"row":55,"column":46},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":46},"end":{"row":55,"column":47},"action":"insert","lines":["w"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":47},"end":{"row":55,"column":48},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":48},"end":{"row":55,"column":49},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":49},"end":{"row":55,"column":50},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":50},"end":{"row":55,"column":51},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":51},"end":{"row":55,"column":52},"action":"insert","lines":["r"]}]}]]},"ace":{"folds":[],"scrolltop":628.3635969161987,"scrollleft":0,"selection":{"start":{"row":55,"column":53},"end":{"row":55,"column":53},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":258,"mode":"ace/mode/ruby"}},"timestamp":1420257213325,"hash":"4f69cd46e2eda04b3ab7298c8f23e415a8b2ba01"}
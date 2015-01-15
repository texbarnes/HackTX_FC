{"changed":true,"filter":false,"title":"charges_controller.rb","tooltip":"/app/controllers/charges_controller.rb","value":"class ChargesController < ApplicationController\n    def new\n    end\n    \n    def create\n      # Amount in cents\n      @amount = 500\n    \n      customer = Stripe::Customer.create(\n        :email => 'example@stripe.com',\n        :card  => params[:stripeToken]\n      )\n    \n      charge = Stripe::Charge.create(\n        :customer    => customer.id,\n        :amount      => @amount,\n        :description => 'Rails Stripe customer',\n        :currency    => 'usd'\n      )\n    \n    rescue Stripe::CardError => e\n      flash[:error] = e.message\n      redirect_to charges_path\n    end\nend","undoManager":{"mark":-1,"position":3,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":47},"end":{"row":1,"column":0},"action":"insert","lines":["",""]},{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":1,"column":4},"end":{"row":23,"column":3},"action":"insert","lines":["def new","end","","def create","  # Amount in cents","  @amount = 500","","  customer = Stripe::Customer.create(","    :email => 'example@stripe.com',","    :card  => params[:stripeToken]","  )","","  charge = Stripe::Charge.create(","    :customer    => customer.id,","    :amount      => @amount,","    :description => 'Rails Stripe customer',","    :currency    => 'usd'","  )","","rescue Stripe::CardError => e","  flash[:error] = e.message","  redirect_to charges_path","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]},{"start":{"row":3,"column":0},"end":{"row":3,"column":4},"action":"insert","lines":["    "]},{"start":{"row":4,"column":0},"end":{"row":4,"column":4},"action":"insert","lines":["    "]},{"start":{"row":5,"column":0},"end":{"row":5,"column":4},"action":"insert","lines":["    "]},{"start":{"row":6,"column":0},"end":{"row":6,"column":4},"action":"insert","lines":["    "]},{"start":{"row":7,"column":0},"end":{"row":7,"column":4},"action":"insert","lines":["    "]},{"start":{"row":8,"column":0},"end":{"row":8,"column":4},"action":"insert","lines":["    "]},{"start":{"row":9,"column":0},"end":{"row":9,"column":4},"action":"insert","lines":["    "]},{"start":{"row":10,"column":0},"end":{"row":10,"column":4},"action":"insert","lines":["    "]},{"start":{"row":11,"column":0},"end":{"row":11,"column":4},"action":"insert","lines":["    "]},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"insert","lines":["    "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"insert","lines":["    "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"insert","lines":["    "]},{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"insert","lines":["    "]},{"start":{"row":16,"column":0},"end":{"row":16,"column":4},"action":"insert","lines":["    "]},{"start":{"row":17,"column":0},"end":{"row":17,"column":4},"action":"insert","lines":["    "]},{"start":{"row":18,"column":0},"end":{"row":18,"column":4},"action":"insert","lines":["    "]},{"start":{"row":19,"column":0},"end":{"row":19,"column":4},"action":"insert","lines":["    "]},{"start":{"row":20,"column":0},"end":{"row":20,"column":4},"action":"insert","lines":["    "]},{"start":{"row":21,"column":0},"end":{"row":21,"column":4},"action":"insert","lines":["    "]},{"start":{"row":22,"column":0},"end":{"row":22,"column":4},"action":"insert","lines":["    "]},{"start":{"row":23,"column":0},"end":{"row":23,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":24,"column":3},"end":{"row":25,"column":0},"action":"remove","lines":["",""]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":24,"column":3},"end":{"row":24,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1421335649349}
class WeixinsController < ApplicationController
  
   def index
     @weixins = Weixin.all.order("created_at DESC")
   end

end

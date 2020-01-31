namespace :dev do
  task :fetch_weixin => :environment do
    puts "Fetch the data..."
    response = RestClient.get "http://v.juhe.cn/weixin/query", :params => { :key => JUHE_CONFIG["api_key"] }
    data = JSON.parse(response.body)

    data["result"]["list"].each do |c|
      existing_weixin = Weixin.find_by_juhe_id( c["id"] )
      if existing_weixin.nil?
        Weixin.create!( :juhe_id => c["id"], :title => c["title"],
                      :source => c["source"], :url => c["url"] )
      end
    end

    puts "Total: #{Weixin.count} news"
  end
end
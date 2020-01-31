class CreateWeixins < ActiveRecord::Migration[5.0]
  def change
    create_table :weixins do |t|
      
       t.string :juhe_id
       t.string :title
       t.string :source
       t.string :url_weixin
      

      t.timestamps
    end
    
    add_index :weixins, :juhe_id
  end
end

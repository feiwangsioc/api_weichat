class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :weixins, :source, :source
    rename_column :weixins, :url_weixin, :url
  end
end

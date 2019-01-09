class AddPublicFlagToPlugins < ActiveRecord::Migration
  def change
    add_column :plugins, :public_flag, :boolean, default: false
    # set existing public_flag values
    #execute("UPDATE plugins SET public_flag = true WHERE private_flag = false")
            #UPDATE COMPANY SET ADDRESS = 'Texas' WHERE ID = 6;
  end
end

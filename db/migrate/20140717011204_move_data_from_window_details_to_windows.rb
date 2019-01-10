class MoveDataFromWindowDetailsToWindows < ActiveRecord::Migration
  def change
    execute "UPDATE windows w, plugin_window_details p SET w.content_id = p.plugin_id WHERE w.id = p.plugin_window_id;"
    execute "UPDATE windows w, chart_window_details c SET w.content_id = c.field_number, w.options = c.options WHERE w.id = c.chart_window_id;"
    
    #execute "UPDATE windows SET content_id =(SELECT field_number FROM chart_window_details  WHERE chart_window_details.chart_window_id = windows.id), options = (SELECT options FROM chart_window_details  WHERE chart_window_details.chart_window_id = windows.id);"
    ##WHERE windows.id =(SELECT chart_window_id FROM chart_window_details WHERE chart_window_details.chart_window_id = windows.id );"
    #execute "UPDATE windows SET content_id =(SELECT plugin_id FROM plugin_window_details  WHERE plugin_window_details.plugin_window_id = windows.id);"
    ##WHERE windows.id =(SELECT plugin_window_id FROM plugin_window_details WHERE plugin_window_details.plugin_window_id = windows.id );"
  end
end


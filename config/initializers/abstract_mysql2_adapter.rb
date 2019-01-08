# config/initializers/abstract_mysql2_adapter.rb

#class ActiveRecord::ConnectionAdapters::Mysql2Adapter
#  NATIVE_DATABASE_TYPES[:primary_key] = "int(11) auto_increment PRIMARY KEY"
#end


require 'active_record/connection_adapters/mysql2_adapter'
NativeDbTypesOverride.configure({
  ActiveRecord::ConnectionAdapters::Mysql2Adapter => {
    primary_key: "int(11) auto_increment PRIMARY KEY"
  }
})


# Methods added to this helper will be available to any migration in the application.
module MigrationHelpers
	def foreign_key(from_table, from_column, to_table)
		constraint_name = "fk_#{from_table}_#{to_table}"
		
    	execute %{alter table #{from_table}
            add constraint #{constraint_name}
              foreign key (#{from_column})
              references #{to_table}(id)
              
        }
  	end
  	 
  	def drop_foreign_key(from_table, from_column, to_table)
   		execute "alter table #{from_table} DROP FOREIGN KEY #{constraint_name}"
  	end
end

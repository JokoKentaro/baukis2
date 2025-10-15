table_names = %w(staff_members administrators customers staff_events customers)

table_names.each do |table_name|
  path = Rails.root.join("db", "seeds", Rails.env, "#{table_name}.rb")
  if File.exist?(path)
    puts "Greating #{table_name}..."
    require(path)
  end
end

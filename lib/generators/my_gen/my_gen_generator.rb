class MyGenGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("/home/amit_mobiloitte/Desktop/act/")
 def copy_initializer_file
    create_file "app/controllers/#{file_name}_controller.rb" , "class #{file_name.camelize}Controller < ApplicationController
end"
  end

  def create_initializer_file
    create_file "app/views/#{file_name}/#{'index'}.html.erb" , "hello you're in app/views/#{file_name}/#{'index'}.html.erb"
  end

  	def gsub_file
		file = File.open "config/routes.rb"
		plus = [*file][1]
		p plus
  		File.open('config/routes.rb', 'r+') do |file|
		  lines = file.each_line.to_a
 		  lines[1] = "#{plus}\tresources :#{file_name} \n"
  		  file.rewind
		  file.write(lines.join)
		end
	end
end

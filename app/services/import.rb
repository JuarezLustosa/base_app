class Import
	require 'csv'
	
	def initialize(file)
		@file = file
	end

	def self.email
		CSV.foreach(@file.path, headers: true) do |row|
		end
	end
end
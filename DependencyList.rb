#!/usr/bin/ruby
# coding:utf-8

class DependencyList
		@self
		@included

		def count
				return @included.size
		end

		def disp
				@included.each do |i|
						puts i
				end
		end

		def depend?( path )
				return		@included.find{ |i| i == path }
		end

		private
		def initialize ( path )
				@self = path, @included = Array.new();
		end
		
		def push( path )
				@included.push( path )
		end

end

ds = DependencyList.new( 'platform/FileManager.h' )

p ds.count
p ds.disp
if ds.depend?( 'stfafx.h' )
		p "included. "
end

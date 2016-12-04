#!/usr/bin/ruby
# coding:utf-8

require 'find'
require 'nkf'


$inclist={}

# inclistに発見したヘッダを登録する
def AddIncList(path)
	if $inclist[path].nil?
		$inclist[path] = 1
	else
		$inclist[path] = $inclist[path]+1
	end
end


#ファイルから"*.h"を検出する
def CountHeader(path)
	# utf-8 LF
	NKF::nkf('-wLu', File.read(path)).each_line{|line|
		if line =~ /^\s*#+\s*include\s+["<](.+)[">]/
			#p $1
			AddIncList( $1 )
		end
	}
	return
end


#ディレクトリ内のファイルを再帰読み込み
Dir.glob(File.join(File.expand_path(ARGV[0]), '**/*.{h,cpp}')) {|path| CountHeader(path) }


$out = $inclist.sort_by{ |key,val| val}
$out.each{ | key, value |
	puts "#{key} , #{value},"
}

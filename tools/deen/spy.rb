#!/usr/bin/env ruby1.8
#funny and little evil i know
#havefun..
log_=Array.new
filter_=['(\([^()]*)\)|(\^A)|(\^C)|(\^D)|(\^T)|(\^X)|(\^F)|(\^S)(\^V)|(\^Z)|(\^N)|(\^U)']
letsopen_=File.open('log.txt','r').each do |line|
log_.push(line.gsub(/#{filter_}/, ""))
end
puts log_


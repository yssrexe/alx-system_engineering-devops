#!/usr/bin/env ruby
a = puts ARGV[0].scan(/(?<=from:)\+?\w+/).join
b = puts ARGV[0].scan(/(?<=to:)\+?\w+/).join
c = puts ARGV[0].scan(/(?<=flags:)[-:0-9]+/).join
printf("%s,%s,%s\n", a, b, c)

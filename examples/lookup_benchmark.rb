#!/usr/bin/env ruby

require 'benchmark'

NAMES = %w(david connie kirsten mark)

def member_h?(name)
  hash = Hash.new(false)
  NAMES.each { |n| hash[n] = true }
  hash[name]
end

def member_h2?(name)
  {
    'david' => true,
    'connie' => true,
    'kirsten' => true,
    'mark' => true,
  }.fetch(name, false)
end

def member_g?(name)
  NAMES.count(name) != 0
end

def member_g2?(name)
  %w(david connie kirsten mark).count(name) != 0
end

n = 1_000_000

Benchmark.bm(8) do |x|
  x.report("find_h")  { n.times { member_h?('david') } }
  x.report("miss_h")  { n.times { member_h?('wade') } }
  x.report("find_h2") { n.times { member_h2?('david') } }
  x.report("miss_h2") { n.times { member_h2?('wade') } }
  x.report("find_g")  { n.times { member_g?('david') } }
  x.report("miss_g")  { n.times { member_g?('wade') } }
  x.report("find_g2")  { n.times { member_g?('david') } }
  x.report("miss_g2")  { n.times { member_g?('wade') } }
end

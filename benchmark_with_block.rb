def benchmark
  start_time = Time.now
  my_string = yield
  end_time = Time.now
  end_time - start_time
end

some_string = "chicken fingers" * 13370000

my_time = benchmark {
  some_string.reverse
  sleep 1
}

puts "Benchmark took #{running_time} seconds to run"

# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)

#Call with...
# running_time = benchmark { string }

# puts "string.reverse took #{running_time} seconds to run"

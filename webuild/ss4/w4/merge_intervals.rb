def merge(intervals)
  result = []
  intervals.sort_by! { |a, _b| a }
  sub = [intervals[0][0], intervals[0][1]]
  intervals[1..(intervals.length - 1)].each do |first, second|
    if sub[1] >= first
      sub = [sub[0], [second, sub[1]].max]
    end
    if sub[1] < first
      result << sub
      sub = [first, second]
    end
  end
  result << sub
  result
end

# arr = [[1, 4], [0, 4]]
# arr = [[1, 3], [2, 6], [8, 10], [15, 18]]
arr = [[1,4],[2,3]]
puts merge(arr).to_s

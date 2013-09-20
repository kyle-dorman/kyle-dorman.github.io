# class SudokuSolver
#   # assume I am recieving Matrix
#   def create_hash
#     (0...9).each do |num|
#       (0...9).each do |num_2|
#         a={}
#         b = num.to_s + num_2.to_s
#         a[b.to_sym] = nil
#       end
#     end
#     a
#   end

# end

#Matrix: [[a,b],[c,d]] + [[a,b],
#                          c,d]]
# Matrix.[](1,1) = d
# Matrix.[](1,0) = c
# Matrix.each_with_index do |e,row,col| { puts "e at row, col"}
# a at 0,0; b at 0,1; c at 1,0; c at 1,1
#Matrix.row(0) = [a,b]
#Matrix.column(0) = [a,c]
def create_hash
    (0...9).each do |num|
      (0...9).each do |num_2|
        a={}
        b = num.to_s + num_2.to_s
        a[b.to_sym] = nil
      end
    end
    a
  end
create_hash

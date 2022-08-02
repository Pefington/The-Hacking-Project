# list_size = 50
# mailing_list = Array.new(list_size) {|i| "jean.dupont.#{i+1}@email.fr"}
# (list_size/2).times do |i|
# print mailing_list[2 * i + 1]
# end

list = []
i = '00'
list << "jean.dupont.#{i.next!}@email.fr" until list.length == 50
n = 0
until n == 50
  puts list[n + 1] if n.even?
  n += 1
end

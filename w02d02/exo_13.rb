# list_size = 50
# mailing_list = Array.new(list_size) { |i| "jean.dupont.#{i + 1}@email.fr" }
# puts mailing_list.to_s

list = []
i = '00'
list << "jean.dupont.#{i.next!}@email.fr" until list.length == 50
puts list.to_s

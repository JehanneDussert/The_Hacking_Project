mail = []
counter = 1

while counter <= 50
	d = counter / 10
	u = counter % 10
	mail << "jean.dupont.#{d}#{u}@email.fr"
	counter += 1
end
puts mail

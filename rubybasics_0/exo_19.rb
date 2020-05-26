mail = []
counter = 2

while counter <= 50
	d = counter / 10
	u = counter % 10
	mail << "jean.dupont.#{d}#{u}@email.fr"
	counter += 2
end
puts mail
    
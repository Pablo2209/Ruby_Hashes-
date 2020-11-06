ventas = {
Enero: 15000,
Febrero: 22000,
Marzo: 12000,
Abril: 17000,
Mayo: 81000,
Junio: 13000,
Julio: 21000,
Agosto: 41200,
Septiembre: 25000,
Octubre: 21500,
Noviembre: 91000,
Diciembre: 21000
}

def busqueda(hash,arr)
  suma=0
        arr.each do |i|
            hash.each do |k, v|
                if i == v.to_s
                    print "#{k} "
                    suma+=1
                end
            end
        end
        var1 = arr.size - suma
        print " no encontrado" 
end

valores = ARGV
busqueda(ventas,valores)
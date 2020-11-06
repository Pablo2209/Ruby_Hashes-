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

venta_trimestral = []
i = 0

ventas.each_slice(3) do |trimestre|
    
    trimestre_hash = trimestre.to_h

    trimestre_valores = trimestre_hash.values

    venta_trimestral[i] = trimestre_valores.inject(0) { |sum, venta| sum + venta }
    i += 1
end

quarters = ["Q1","Q2","Q3","Q4"].zip(venta_trimestral).to_h

puts quarters
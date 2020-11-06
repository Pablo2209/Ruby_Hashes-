ventas = {
Octubre: 65000,
Noviembre: 68000,
Diciembre: 72000
}

def filtrando(hash)
    otro= {}
    hash.each do |k, v|
        if v < 70000
            otro[k]= v
        end
    end
    otro
end


puts filtrando(ventas)

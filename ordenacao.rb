# Coloque números aletórios e deixa a magia acontecer
lista = [219,5.5,15,10,99,5,70,34,1,123,23,1]
lista_ordenada = [];

i = 0

def verifiy(n,i,array)
    if array[i] != nil
        if n < array[i]
            array.insert(i,n)
        else
            verifiy(n,i+1,array)
        end
    else
        array.insert(-1,n)
    end

    return array
end

while i < lista.length
    if lista_ordenada.empty?
        lista_ordenada.push(lista[i])
    else
        lista_ordenada = verifiy(lista[i],0,lista_ordenada)
    end
    i+=1

end

print lista_ordenada
puts
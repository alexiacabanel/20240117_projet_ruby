def etage_number
    puts "Combien d'étages voulez-vous ? (nombre impair)"
   etage = gets.chomp.to_i
   while etage.even?
    puts "J'AI DIS UN NOMBRE IMPAIR TROUDUC"
    puts "Combien d'étages voulez-vous ? (nombre impair)"
    etage = gets.chomp.to_i
   end
   return etage = etage/2+1
end

def half_pyramid_inverted(etage)
    for row in 1..etage
        row.times {print " "}
        (etage-row-1).times {print "#"}
        (etage-row).times {print "#"}
        puts
    end
end

def half_pyramid(etage)
    for row in 1..etage
        (etage-row).times {print " "}
        row.times {print "#"}
        (row-1).times {print "#"}
        puts
    end
end

def perform
    etage = etage_number
    half_pyramid(etage)
    half_pyramid_inverted(etage)
end

perform
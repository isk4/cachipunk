if ARGV.length != 1
    puts "Por favor, ingresa 1 y sólo 1 argumento"
else
    player_input = ARGV[0].downcase
    admissible_input = ["piedra", "papel", "tijera"]
    player = admissible_input.index(player_input)
    if player == nil
        puts "Argumento inválido. Debe ser piedra, papel o tijera"
    else
        cpu = rand(0..2)
        puts "Computador juega #{admissible_input[cpu]}"
        if player == cpu
            puts "Empataste"
        else
            result = player.to_s + cpu.to_s
            ["02", "10", "21"].include?(result) ? (puts "Ganaste") : (puts "Perdiste")
        end
    end       
end
require 'ruby2d'



set background: '#000000'
set width: 1200
set height: 600
set title: 'Batalha Naval'

som_fundo = Music.new('D:\Computação\jogoBatalhaNaval\RUBY\sons\gaviota.mp3')
som_fundo.volume = 50
som_fundo.loop = true
som_fundo.play


Image.new(
    'D:\Computação\jogoBatalhaNaval\RUBY\IBMsprites\tela sprite.png',
    x:0,y:0,
    width: 1200, height: 600
)

caixa_navios = Image.new(
    'D:\Computação\jogoBatalhaNaval\RUBY\IBMsprites\quadrado_de_baixo.png',
    x: 130, y: 332,
    width: 620, height: 185

)

class Submarino
    def initialize(xa, ya)
        @x = xa
        @y = ya
        @quantidade = 4
        @estaVertical = true
        @selecionado = true
        @mostrarQuant = [
            Image.new('IBMsprites\quantBarcos\0.png',x: @x + 35, y: @y),
            Image.new('IBMsprites\quantBarcos\1.png',x: @x + 35, y: @y),
            Image.new('IBMsprites\quantBarcos\2.png',x: @x + 35, y: @y),
            Image.new('IBMsprites\quantBarcos\3.png',x: @x + 35, y: @y),
            Image.new('IBMsprites\quantBarcos\4.png',x: @x + 35, y: @y),
        ]
        @mostrarQuant[0].remove()
        @mostrarQuant[1].remove()
        @mostrarQuant[2].remove()
        @mostrarQuant[3].remove()
    end

    def draw
        @vertical = Image.new(
            'IBMsprites\navios\submarino\submarino_vertical.png',
            x: @x, y: @y,
        )
        @horizontal = Image.new(
            'IBMsprites\navios\submarino\submarino_horizontal.png',
            x: @x - 30, y: @y+40,
        )
        @verticalReleased = Image.new(
            'IBMsprites\navios\submarino\submarino_vertical_released.png',
            x: @x, y: @y,
        )
        @horizontalReleased = Image.new(
            'IBMsprites\navios\submarino\submarino_horizontal_released.png',
            x: @x - 30, y: @y+40,
        )
        @horizontal.remove()
        @verticalReleased.remove()
        @horizontalReleased.remove()
    end

    def clicado(x,y)
        if @horizontal.contains?(x,y)
            true
        elsif @vertical.contains?(x,y)
            true
        elsif @verticalReleased.contains?(x,y)
            true
        elsif @horizontalReleased.contains?(x,y)
            true
        else
            false
        end
    end
    
    def definirSelecionado(opcao)
        @selecionado = opcao
    end

    def  mostrarQuant
        @mostrarQuant
    end

    def diminuirMostrarQuant
        @mostrarQuant[@quantidade].remove()
        @mostrarQuant[@quantidade-1].add()
    end

    def quantidade
        @quantidade
    end

    def diminuirQuant
        @quantidade -= 1
    end

    def selecionado
        @selecionado
    end

    def verticalReleased
        @verticalReleased
    end

    def horizontalReleased
        @horizontalReleased
    end

    def definirEstaVertical(flag)
        @estaVertical = flag
    end

    def estaVertical
        @estaVertical
    end

    def vertical
        @vertical
    end

    def horizontal
        @horizontal
    end

end

class Contratorpedeiro
    def initialize(xa, ya)
        @x = xa
        @y = ya
        @quantidade = 3
        @estaVertical = true
        @selecionado = false
        @mostrarQuant = [
            Image.new('IBMsprites\quantBarcos\0.png',x: @x + 35, y: @y),
            Image.new('IBMsprites\quantBarcos\1.png',x: @x + 35, y: @y),
            Image.new('IBMsprites\quantBarcos\2.png',x: @x + 35, y: @y),
            Image.new('IBMsprites\quantBarcos\3.png',x: @x + 35, y: @y),
        ]
        @mostrarQuant[0].remove()
        @mostrarQuant[1].remove()
        @mostrarQuant[2].remove()
    end

    def draw
        @vertical = Image.new(
            'IBMsprites\navios\contratorpedeiro\contratorpedeiro_vertical.png',
            x: @x, y: @y,
        )
        @horizontal = Image.new(
            'IBMsprites\navios\contratorpedeiro\contratorpedeiro_horizontal.png',
            x: @x - 24, y: @y+42,
        )
        @verticalReleased = Image.new(
            'IBMsprites\navios\contratorpedeiro\contratorpedeiro_vertical_released.png',
            x: @x, y: @y,
        )
        @horizontalReleased = Image.new(
            'IBMsprites\navios\contratorpedeiro\contratorpedeiro_horizontal_released.png',
            x: @x - 24, y: @y+42,
        )
        @horizontal.remove()
        @vertical.remove()
        @horizontalReleased.remove()
    end

    def clicado(x,y)
        if @horizontal.contains?(x,y)
            true
        elsif @vertical.contains?(x,y)
            true
        elsif @verticalReleased.contains?(x,y)
            true
        elsif @horizontalReleased.contains?(x,y)
            true
        else
            false
        end
    end

    def  mostrarQuant
        @mostrarQuant
    end

    def diminuirMostrarQuant
        @mostrarQuant[@quantidade].remove()
        @mostrarQuant[@quantidade-1].add()
    end

    def quantidade
        @quantidade
    end

    def diminuirQuant
        @quantidade -= 1
    end
    
    def definirSelecionado(opcao)
        @selecionado = opcao
    end

    def selecionado
        @selecionado
    end

    def verticalReleased
        @verticalReleased
    end

    def horizontalReleased
        @horizontalReleased
    end

    def definirEstaVertical(flag)
        @estaVertical = flag
    end

    def estaVertical
        @estaVertical
    end

    def vertical
        @vertical
    end

    def horizontal
        @horizontal
    end

end

class NavioTanque
    def initialize(xa, ya)
        @x = xa
        @y = ya
        @quantidade = 2
        @estaVertical = true
        @selecionado = false
        @mostrarQuant = [
            Image.new('IBMsprites\quantBarcos\0.png',x: @x + 37, y: @y),
            Image.new('IBMsprites\quantBarcos\1.png',x: @x + 37, y: @y),
            Image.new('IBMsprites\quantBarcos\2.png',x: @x + 37, y: @y),
        ]
        @mostrarQuant[0].remove()
        @mostrarQuant[1].remove()
    end

    def draw
        @vertical = Image.new(
            'IBMsprites\navios\tanque\navio_tanque_vertical.png',
            x: @x, y: @y,
        )
        @horizontal = Image.new(
            'IBMsprites\navios\tanque\navio_tanque_horizontal.png',
            x: @x - 24, y: @y  + 40,
        )
        @verticalReleased = Image.new(
            'IBMsprites\navios\tanque\navio_tanque_vertical_released.png',
            x: @x, y: @y,
        )
        @horizontalReleased = Image.new(
            'IBMsprites\navios\tanque\navio_tanque_horizontal_released.png',
            x: @x - 24, y: @y  + 40,
        )
        @horizontal.remove()
        @vertical.remove()
        @horizontalReleased.remove()
    end

    def clicado(x,y)
        if @horizontal.contains?(x,y)
            true
        elsif @vertical.contains?(x,y)
            true
        elsif @verticalReleased.contains?(x,y)
            true
        elsif @horizontalReleased.contains?(x,y)
            true
        else
            false
        end
    end

    def  mostrarQuant
        @mostrarQuant
    end

    def diminuirMostrarQuant
        @mostrarQuant[@quantidade].remove()
        @mostrarQuant[@quantidade-1].add()
    end

    def quantidade
        @quantidade
    end

    def diminuirQuant
        @quantidade -= 1
    end

    def selecionado
        @selecionado
    end

    def definirSelecionado(opcao)
        @selecionado = opcao
    end

    def verticalReleased
        @verticalReleased
    end

    def horizontalReleased
        @horizontalReleased
    end

    def definirEstaVertical(flag)
        @estaVertical = flag
    end

    def estaVertical
        @estaVertical
    end

    def vertical
        @vertical
    end

    def horizontal
        @horizontal
    end

end

class PortaAvioes
    def initialize(xa, ya)
        @x = xa
        @y = ya
        @quantidade = 1
        @estaVertical = true
        @selecionado = false
        @mostrarQuant = [
            Image.new('IBMsprites\quantBarcos\0.png',x: @x + 40, y: @y + 20),
            Image.new('IBMsprites\quantBarcos\1.png',x: @x + 40, y: @y + 20),
        ]
        @mostrarQuant[0].remove()
    end

    def draw
        @vertical = Image.new(
            'IBMsprites\navios\portaavioes\porta_avioes_vertical.png',
            x: @x, y: @y,
        )
        @horizontal = Image.new(
            'IBMsprites\navios\portaavioes\porta_avioes_horizontal2.png',
            x: @x - 20, y: @y + 60,
        )
        @verticalReleased = Image.new(
            'IBMsprites\navios\portaavioes\porta_avioes_vertical_released.png',
            x: @x, y: @y,
        )
        @horizontalReleased = Image.new(
            'IBMsprites\navios\portaavioes\porta_avioes_horizontal_released.png',
            x: @x - 20, y: @y + 60,
        )
        @horizontal.remove()
        @vertical.remove()
        @horizontalReleased.remove()
    end

    def clicado(x,y)
        if @horizontal.contains?(x,y)
            true
        elsif @vertical.contains?(x,y)
            true
        elsif @verticalReleased.contains?(x,y)
            true
        elsif @horizontalReleased.contains?(x,y)
            true
        else
            false
        end
    end

    def  mostrarQuant
        @mostrarQuant
    end

    def diminuirMostrarQuant
        @mostrarQuant[@quantidade].remove()
        @mostrarQuant[@quantidade-1].add()
    end

    def quantidade
        @quantidade
    end

    def diminuirQuant
        @quantidade -= 1
    end

    def definirSelecionado(opcao)
        @selecionado = opcao
    end

    def selecionado
        @selecionado
    end

    def verticalReleased
        @verticalReleased
    end

    def horizontalReleased
        @horizontalReleased
    end


    def definirEstaVertical(flag)
        @estaVertical = flag
    end

    def estaVertical
        @estaVertical
    end

    def vertical
        @vertical
    end

    def horizontal
        @horizontal
    end

end

portaAvioesTemplate = PortaAvioes.new(580,342)
portaAvioesTemplate.draw
navioTanqueTemplate = NavioTanque.new(410,360)
navioTanqueTemplate.draw
contratorpedeiroTemplate = Contratorpedeiro.new(282, 360)
contratorpedeiroTemplate.draw
submarinoTemplate = Submarino.new(194, 360)
submarinoTemplate.draw


#x56
#y120


$fileira = 1
$x_quadrados = 15 + 120
$y_quadrados = 20 + 56 

class Explosao_agua
    def initialize(x,y)
        @x = x - 16
        @y = y - 16
    end

    def play_exp
        splash= Sound.new('D:\Computação\jogoBatalhaNaval\RUBY\sons\splash.mp3')
        exp = Sprite.new(
            'D:\Computação\jogoBatalhaNaval\RUBY\sprites\explosão_água.png',
            x: @x,
            y: @y,
            clip_width: 32,
            time: 60,
          )
        exp.play do
            splash.play
        end
    end

end



class Quadrado_player
    def initialize
        @x = $x_quadrados
        @y = $y_quadrados
        $fileira += 1
        $x_quadrados += 32
        if $fileira == 13
            $x_quadrados = 15 + 120
            $y_quadrados += 32
            $fileira = 1
        end
    end

    def y
        @y
    end

    def x
        @x
    end

    def draw
        @imagem = Image.new('D:\Computação\jogoBatalhaNaval\RUBY\sprites\quadrado3.png',x: @x,y:@y,)
    end

    def imagem
        @imagem
    end
end

#142

$fileiraE = 1
$x_quadradosE = 545
$y_quadradosE = 20 + 56 

class Quadrado_enemy
    def initialize
        @x = $x_quadradosE
        @y = $y_quadradosE
        $fileiraE += 1
        $x_quadradosE += 32
        if $fileiraE == 13
            $x_quadradosE = 545
            $y_quadradosE += 32
            $fileiraE = 1
        end
    end

    def y
        @y
    end

    def x
        @x
    end

    def draw
        @imagem = Image.new('D:\Computação\jogoBatalhaNaval\RUBY\sprites\quadrado3.png',x: @x,y:@y,)
    end

    def imagem
        @imagem
    end
end


$quadrados_enemy = Array.new(96){Quadrado_enemy.new}
$quadrados_enemy.each do |box|
    box.draw
end

$quadrados_player = Array.new(96){Quadrado_player.new}
$quadrados_player.each do |box|
    box.draw
end

startSound = Sound.new('D:\Computação\jogoBatalhaNaval\RUBY\sons\start.mp3')


class BotaoStart
    def initialize
        @x = 782
        @y = 345
    end

    def draw
        @pressed = Image.new(
            'D:\Computação\jogoBatalhaNaval\RUBY\IBMsprites\botaoSpressed.png',
            x: @x, y: @y,
            width: 120, height: 40,
        )
        @released = Image.new(
            'D:\Computação\jogoBatalhaNaval\RUBY\IBMsprites\botaoS.png',
            x: @x, y: @y,
            width: 120, height: 40,
        )
        @pressed.remove()
    end

    def pressed
        @pressed
    end

    def released
        @released
    end
    
end

class BotaoAtomic
    def initialize
        @x = 782
        @y = 385
    end

    def draw
        @pressed = Image.new(
            'D:\Computação\jogoBatalhaNaval\RUBY\IBMsprites\botaoAtomicPress.png',
            x: @x, y: @y,
            width: 120, height: 40,
        )
        @released = Image.new(
            'D:\Computação\jogoBatalhaNaval\RUBY\IBMsprites\botaoAtomicReleas.png',
            x: @x, y: @y,
            width: 120, height: 40,
        )
        @pressed.remove()
    end

    def pressed
        @pressed
    end

    def released
        @released
    end
    
end

btRotate = Image.new(
'D:\Computação\jogoBatalhaNaval\RUBY\IBMsprites\botaoRotate.png',
x: 782, y: 430,
width: 120, height: 40,
)
  
bt_start = BotaoStart.new
bt_start.draw
bt_atomic = BotaoAtomic.new
bt_atomic.draw

partida_inicio = false

def apagar_barco(barco)
    if barco.estaVertical == true
        barco.vertical.remove()
        barco.verticalReleased.add()
    else
        barco.horizontal.remove()
        barco.horizontalReleased.add()
    end
end

def roatacionar_barco(barco)
    if barco.estaVertical == true
        barco.vertical.remove()
        barco.horizontal.add()
        barco.definirEstaVertical(false)
    else
        barco.vertical.add()
        barco.horizontal.remove()
        barco.definirEstaVertical(true)
    end
end

def acender_barco(barco)
    if barco.estaVertical == true
        barco.verticalReleased.remove()
        barco.vertical.add()
    else
        barco.horizontalReleased.remove()
        barco.horizontal.add()
    end
end

box_expl_player = []
qunt_box_expl_player = 0
box_expl_inimigo = []
qunt_box_expl_inimigo = 0

$error = Sound.new('sons\error.mp3')


def check_disponibilidade(box_expl_player, quadrados_player, quadrado, tipo, v_h)

    submarino_horizontal_proibido = [12,24,36,48,60,72,84,96]
    submarino_vertical_proibido = [85,86,87,88,89,90,91,92,93,94,95,96]
    contraTorpedeiro_horizontal_proibido = [11,23,35,47,59,71,83,95]
    contraTorpedeiro_vertical_proibido = [73,74,75,76,77,78,79,80,81,82,83,84]
    navioTanque_horizontal_proibido = [10,22,34,46,58,70,82,94]
    navioTanque_vertical_proibido = [61,62,63,64,65,66,67,68,69,70,71,72]
    portAvioes_horizontal_proibido = [9,21,33,45,57,69,81,93]
    portAvioes_vertical_proibido = [49,50,51,52,53,54,55,56,57,58,59,60]

    if v_h == "vertical"
        if tipo == "submarino"
            if submarino_vertical_proibido.include? quadrado
                return false
            end    
        elsif tipo == "contraTorpedeiro"
            if submarino_vertical_proibido.include? quadrado
                return false
            end
            if contraTorpedeiro_vertical_proibido.include? quadrado
                return false
            end
        elsif tipo == "navioTanque"
            if submarino_vertical_proibido.include? quadrado
                return false
            end
            if contraTorpedeiro_vertical_proibido.include? quadrado
                return false
            end
            if navioTanque_vertical_proibido.include? quadrado
                return false
            end
        else
            if submarino_vertical_proibido.include? quadrado
                return false
            end
            if contraTorpedeiro_vertical_proibido.include? quadrado
                return false
            end
            if navioTanque_vertical_proibido.include? quadrado
                return false
            end
            if portAvioes_vertical_proibido.include? quadrado
                return false
            end
        end
    else
        if tipo == "submarino"
            if submarino_horizontal_proibido.include? quadrado
                return false
            end
        elsif tipo == "contraTorpedeiro"
            if submarino_horizontal_proibido.include? quadrado
                return false
            end
            if contraTorpedeiro_horizontal_proibido.include? quadrado
                return false
            end
        elsif tipo == "navioTanque"
            if submarino_horizontal_proibido.include? quadrado
                return false
            end
            if contraTorpedeiro_horizontal_proibido.include? quadrado
                return false
            end
            if navioTanque_horizontal_proibido.include? quadrado
                return false
            end
        else
            if submarino_horizontal_proibido.include? quadrado
                return false
            end
            if contraTorpedeiro_horizontal_proibido.include? quadrado
                return false
            end
            if navioTanque_horizontal_proibido.include? quadrado
                return false
            end
            if portAvioes_horizontal_proibido.include? quadrado
                return false
            end
        end
    end

    
    return true
end

on:mouse_down do |mouse_click|
    if partida_inicio == true
        quadrado = 0
        $quadrados_enemy.each do |box|
            quadrado+=1
            if box.imagem.contains?(mouse_click.x,mouse_click.y)
                explosao = Explosao_agua.new(mouse_click.x,mouse_click.y)
                explosao.play_exp
            end
        end
    else
        #Estamos aqui-----------------------------------------------------------------------------------------
        #portaAvioesTemplate
        #navioTanqueTemplate 
        #contratorpedeiroTemplate 
        #submarinoTemplate

        quadrado_jogador = 0
        $quadrados_player.each do |box|
            quadrado_jogador+=1
            if box.imagem.contains?(mouse_click.x,mouse_click.y)
                puts quadrado_jogador
                box_expl_player.insert(qunt_box_expl_player, quadrado_jogador)
                qunt_box_expl_player += 1

                if submarinoTemplate.selecionado == true
                    if submarinoTemplate.quantidade > 0
                        startSound.play
                        submarinoTemplate.diminuirMostrarQuant
                        if submarinoTemplate.estaVertical == true
                            Image.new(
                                'IBMsprites\navios\submarino\submarino_vertical.png',
                                x: box.x, y: box.y,
                            )
                        else
                            Image.new(
                                'IBMsprites\navios\submarino\submarino_horizontal.png',
                                x: box.x, y: box.y,
                            )
                        end
                        submarinoTemplate.diminuirQuant
                    end
                    
                elsif navioTanqueTemplate.selecionado == true
                    if navioTanqueTemplate.quantidade > 0
                        startSound.play
                        navioTanqueTemplate.diminuirMostrarQuant
                        if navioTanqueTemplate.estaVertical == true
                            Image.new(
                                'IBMsprites\navios\tanque\navio_tanque_vertical.png',
                                x: box.x, y: box.y,
                            )
                        else
                            Image.new(
                                'IBMsprites\navios\tanque\navio_tanque_horizontal.png',
                                x: box.x, y: box.y,
                            )
                        end
                        navioTanqueTemplate.diminuirQuant
                    end
                elsif contratorpedeiroTemplate.selecionado == true
                    if contratorpedeiroTemplate.quantidade > 0
                        startSound.play
                        contratorpedeiroTemplate.diminuirMostrarQuant
                        if contratorpedeiroTemplate.estaVertical == true
                            Image.new(
                                'IBMsprites\navios\contratorpedeiro\contratorpedeiro_vertical.png',
                                x: box.x, y: box.y,
                            )
                        else
                            Image.new(
                                'IBMsprites\navios\contratorpedeiro\contratorpedeiro_horizontal.png',
                                x: box.x, y: box.y,
                            )
                        end
                        contratorpedeiroTemplate.diminuirQuant
                    end
                else
                    if portaAvioesTemplate.quantidade > 0
                        startSound.play
                        portaAvioesTemplate.diminuirMostrarQuant
                        if portaAvioesTemplate.estaVertical == true
                            Image.new(
                                'IBMsprites\navios\portaAvioes\porta_avioes_vertical.png',
                                x: box.x, y: box.y,
                            )
                        else
                            Image.new(
                                'IBMsprites\navios\portaavioes\porta_avioes_horizontal.png',
                                x: box.x, y: box.y,
                            )
                        end
                        portaAvioesTemplate.diminuirQuant
                    end

                end
            end
        end

        if bt_start.released.contains?(mouse_click.x,mouse_click.y)
            startSound.play
            bt_start.released.remove()
            bt_start.pressed.add()
            partida_inicio = true

            apagar_barco(submarinoTemplate)
            apagar_barco(navioTanqueTemplate)
            apagar_barco(contratorpedeiroTemplate)
            apagar_barco(portaAvioesTemplate)


        elsif btRotate.contains?(mouse_click.x,mouse_click.y)
            startSound.play
            if portaAvioesTemplate.selecionado == true
                roatacionar_barco(portaAvioesTemplate)
            elsif submarinoTemplate.selecionado == true
                roatacionar_barco(submarinoTemplate)
            elsif contratorpedeiroTemplate.selecionado == true
                roatacionar_barco(contratorpedeiroTemplate)
            elsif navioTanqueTemplate.selecionado == true
                roatacionar_barco(navioTanqueTemplate)
            end
        else
            if portaAvioesTemplate.clicado(mouse_click.x,mouse_click.y) == true
                if portaAvioesTemplate.selecionado == false
                    startSound.play
                    acender_barco(portaAvioesTemplate)
                    apagar_barco(submarinoTemplate)
                    apagar_barco(contratorpedeiroTemplate)
                    apagar_barco(navioTanqueTemplate)

                   
                    submarinoTemplate.definirSelecionado(false)
                    portaAvioesTemplate.definirSelecionado(true)
                    contratorpedeiroTemplate.definirSelecionado(false)
                    navioTanqueTemplate.definirSelecionado(false)
                end
            elsif submarinoTemplate.clicado(mouse_click.x,mouse_click.y) == true
                if submarinoTemplate.selecionado == false
                    startSound.play
                    acender_barco(submarinoTemplate)
                    apagar_barco(portaAvioesTemplate)
                    apagar_barco(contratorpedeiroTemplate)
                    apagar_barco(navioTanqueTemplate)

                    submarinoTemplate.definirSelecionado(true)
                    portaAvioesTemplate.definirSelecionado(false)
                    contratorpedeiroTemplate.definirSelecionado(false)
                    navioTanqueTemplate.definirSelecionado(false)
                end
            elsif contratorpedeiroTemplate.clicado(mouse_click.x,mouse_click.y) == true
                startSound.play
                if contratorpedeiroTemplate.selecionado == false
                    acender_barco(contratorpedeiroTemplate)
                    apagar_barco(portaAvioesTemplate)
                    apagar_barco(submarinoTemplate)
                    apagar_barco(navioTanqueTemplate)

                    submarinoTemplate.definirSelecionado(false)
                    portaAvioesTemplate.definirSelecionado(false)
                    contratorpedeiroTemplate.definirSelecionado(true)
                    navioTanqueTemplate.definirSelecionado(false)
                end
            elsif navioTanqueTemplate.clicado(mouse_click.x,mouse_click.y) == true
                startSound.play
                if navioTanqueTemplate.selecionado == false
                    acender_barco(navioTanqueTemplate)
                    apagar_barco(portaAvioesTemplate)
                    apagar_barco(contratorpedeiroTemplate)
                    apagar_barco(submarinoTemplate)

                    submarinoTemplate.definirSelecionado(false)
                    portaAvioesTemplate.definirSelecionado(false)
                    contratorpedeiroTemplate.definirSelecionado(false)
                    navioTanqueTemplate.definirSelecionado(true)
                end
            end
        end

    end 

    

end

show
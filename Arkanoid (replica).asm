#Nombre del proyecto: La desolacion de Ernesto
#Desarrolladores: Randall Duran, Freddy Salazar
#Setiembre 2016
.data
	backgroundColor:	.word 0x00000000
	blueColor:		.word 0x0012fff7
	colorOne:		.word 0x00ff8000
	colorTwo:		.word 0x00c00080
	ballColor:		.word 0x00ffffff
	Der:			.word 100
	Izq:			.word 97	
	yDirection:		.word -1
	xDirection:		.word -1
	
	Aa0:			.word 0
	Aa1:			.word 0
	Aa3:			.word 0
	
	Ba0:			.word 0
	Ba1:			.word 0
	Ba3:			.word 0
	Contadorx:		.word 0
	Contadory:		.word 0
#bloque	
	base1:			.word 0
	base2:			.word 0
	base3:			.word 0
	base4:			.word 0
	base5:			.word 0
	v1:			.word 0
	v2:			.word 0
	yBlock:			.word 0
	yBlock1:		.word 0
	yBlock2:		.word 0
	yBlock3:		.word 0
	yBlock4:		.word 0
	yBlock5:		.word 0
	BlockWidth: 		.word 1
	mode:			.word 0
	
	bloqueOut:		.word 0
	saveUno:		.word 0
	saveDos:		.word 0
	saveTres:
#paleta
	PaddleR:		.word 0
	PaddleL:		.word 0
	PaddleY:		.word 55
	PaddleW:		.word 6
	

.text
#########################################################################################
##########################  Inicio #####################################################
########################################################################################

##################################################
#cPantalla de inicio
##################################################
NewGame:
	jal ClearBoard

	Lines:
		li $a0, 10 
		li $a1, 13 
		lw $a2, ballColor
		li $a3, 13
		jal DrawHorizontalLine
		
		li $a0, 15
		li $a1, 13 
		lw $a2, ballColor
		li $a3, 18
		jal DrawHorizontalLine
		
		li $a0, 27
		li $a1, 13 
		lw $a2, ballColor
		li $a3, 30
		jal DrawHorizontalLine
		
		li $a0, 38
		li $a1, 13 
		lw $a2, ballColor
		li $a3, 42
		jal DrawHorizontalLine
		
		li $a0, 44
		li $a1, 13 
		lw $a2, ballColor
		li $a3, 46
		jal DrawHorizontalLine
		
		li $a0, 48
		li $a1, 13 
		lw $a2, ballColor
		li $a3, 50
		jal DrawHorizontalLine
		
		li $a0, 15
		li $a1, 15
		lw $a2, ballColor
		li $a3, 18
		jal DrawHorizontalLine
		
		li $a0, 10
		li $a1, 16
		lw $a2, ballColor
		li $a3, 13
		jal DrawHorizontalLine
		
		li $a0, 27
		li $a1, 16
		lw $a2, ballColor
		li $a3, 30
		jal DrawHorizontalLine
		
		li $a0, 38
		li $a1, 18
		lw $a2, ballColor
		li $a3, 42
		jal DrawHorizontalLine
		
		li $a0, 44
		li $a1, 18
		lw $a2, ballColor
		li $a3, 46
		jal DrawHorizontalLine
		
		li $a0, 48
		li $a1, 18
		lw $a2, ballColor
		li $a3, 50
		jal DrawHorizontalLine
		
		
		
		
		
		
	PONG:
		li $a0, 10
		li $a1, 13
		lw $a2, ballColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 13
		li $a1, 13
		lw $a2, ballColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 15
		li $a1, 13
		lw $a2, ballColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 18
		li $a1, 13
		lw $a2, ballColor
		li $a3, 15
		jal DrawVerticalLine
		
		li $a0, 21
		li $a1, 13
		lw $a2, ballColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 27
		li $a1, 13
		lw $a2, ballColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 30
		li $a1, 13
		lw $a2, ballColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 32
		li $a1, 13
		lw $a2, ballColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 33
		li $a1, 13
		lw $a2, ballColor
		li $a3, 14
		jal DrawVerticalLine
		
		li $a0, 34
		li $a1, 15
		lw $a2, ballColor
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 35
		li $a1, 17
		lw $a2, ballColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 36
		li $a1, 13
		lw $a2, ballColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 38
		li $a1, 13
		lw $a2, ballColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 42
		li $a1, 13
		lw $a2, ballColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 45
		li $a1, 13
		lw $a2, ballColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 48
		li $a1, 13
		lw $a2, ballColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 51
		li $a1, 14
		lw $a2, ballColor
		li $a3, 17
		jal DrawVerticalLine
		
		li $a0, 17
		li $a1, 16
		jal DrawPoint
		
		li $a0, 18
		li $a1, 17
		jal DrawPoint
		
		li $a0, 18
		li $a1, 18
		jal DrawPoint
		
		li $a0, 22
		li $a1, 15
		jal DrawPoint
		
		li $a0, 23
		li $a1, 14
		jal DrawPoint
		
		li $a0, 24
		li $a1, 13
		jal DrawPoint
		
		li $a0, 23
		li $a1, 16
		jal DrawPoint
		
		li $a0, 24
		li $a1, 17
		jal DrawPoint
		
		li $a0, 24
		li $a1, 18
		jal DrawPoint
		
		
	
	Press1or2:
	
	      li $a0, 35
		li $a1, 25
		li $a3, 29
		jal DrawVerticalLine
		
		li $a0, 17
		jal DrawVerticalLine
		
		li $a0, 19
		jal DrawVerticalLine
		
		li $a0, 21
		jal DrawVerticalLine
		
		li $a0, 39
		jal DrawVerticalLine
		
		li $a0, 41
		jal DrawVerticalLine
		
		li $a0, 43
		jal DrawVerticalLine
		
		li $a0, 45
		jal DrawVerticalLine
		
		li $a0, 12
		jal DrawVerticalLine
		
		li $a3, 15
		jal DrawHorizontalLine
		
		li $a1, 27
		jal DrawHorizontalLine
		
		li $a0, 15
		li $a1, 26
		li $a3, 27
		jal DrawVerticalLine
		
		li $a0, 18
		li $a1, 25
		li $a3, 27
		jal DrawVerticalLine
		
		li $a0, 22
		li $a1, 27
		jal DrawPoint
		
		li $a1, 29
		jal DrawPoint
		
		li $a1, 25
		jal DrawPoint
		
		li $a0, 24 
		li $a1, 29
		li $a3, 26
		jal DrawHorizontalLine
		
		li $a0, 24
		li $a1, 27
		jal DrawHorizontalLine
		
		li $a1, 25
		jal DrawHorizontalLine
		
		li $a1, 26
		jal DrawPoint
		
		li $a0, 26
		li $a1, 28
		jal DrawPoint
		
		li $a0, 22
		li $a1, 25
		jal DrawPoint
		
		li $a0, 34
		li $a1, 26
		jal DrawPoint
		
		li $a1, 29
		li $a3, 36
		jal DrawHorizontalLine

		li $a0, 40
		jal DrawPoint
		
		li $a1, 25
		jal DrawPoint

		li $a0, 44
		li $a3, 27
		jal DrawVerticalLine
			
		li $a0, 49
		li $a1, 25
		li $a3, 50
		jal DrawHorizontalLine
	
		li $a1, 28
		jal DrawPoint
	
		li $a0, 50
		li $a1, 29
		jal DrawPoint
		
		li $a1, 27
		jal DrawPoint
	
		li $a0, 51
		li $a1, 26
		jal DrawPoint
	
		li $a0, 48
		jal DrawPoint
		
		li $a1, 29
		li $a3, 51
		jal DrawHorizontalLine

		li $a0, 28
		li $a3, 30
		jal DrawHorizontalLine
	
		li $a1, 27
		jal DrawHorizontalLine
		
		li $a1, 25
		li $a3, 30
		jal DrawHorizontalLine
	
		li $a1, 26
		jal DrawPoint
	
		li $a0, 30
		li $a1, 28
		jal DrawPoint
		
		li $a1, 26
		lw $a2, backgroundColor
		jal DrawPoint
		
		li $a0, 19
		li $a1, 27
		jal DrawPoint
		
		li $a0, 45
		jal DrawPoint
		
		li $a0, 44
		li $a1, 26
		jal DrawPoint
		
		li $a0, 18
		jal DrawPoint
SelectMode:
		lw $t1, 0xFFFF0004		# verifica la tecla presionada
		beq $t1, 0x00000031, SetOnePlayerMode # 1 pressed
		beq $t1, 0x00000032, SetTwoPlayerMode # 2 pressed
		
		li $a0, 250	#
		li $v0, 32	# pausa de  250 milisegundos
		syscall		#
		
		j SelectMode    # encicla la seleccion de pantalla
		
SetOnePlayerMode:
		j BeginGame  #salta a establecer la pantalla uno
SetTwoPlayerMode:
		j BeginGame2 #salta a establecer la pantalla dos
BeginGame2:	
		sw $zero, 0xFFFF0000		# clear the button pushed bit
		sw $t1, mode			#guarda el valor en mode
		sw $zero, bloqueOut		#establece el contador en cero
		jal ClearBoard			# limpia pantalla
		jal vidas			#establece las vidas
		j set2				#establece el conjunto de bloques de la pantalla dos
		
BeginGame:
		sw $zero, 0xFFFF0000		# clear the button pushed bit
		sw $t1, mode			#guarda el valor en mode
		sw $zero, bloqueOut		#establece el contador en cero
		jal ClearBoard			# limpia pantalla
		jal vidas			#establece las vidas
		j set				#establece el conjunto de bloques de la pantalla uno
##########################################
########Pinta el conjunto de vidas########
##########################################
vidas:
		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		li $a0, 51
		li $a1, 0
		lw $a2, ballColor
		li $a3, 63
		jal DrawVerticalLine
		
		li $a0, 2
		li $a1, 1
		lw $a2, ballColor
		
		jal DrawPoint
		
		li $a0, 4
		li $a1, 1
		lw $a2, ballColor
		
		jal DrawPoint
		
		li $a0, 6
		li $a1, 1
		lw $a2, ballColor
		
		jal DrawPoint
		
		
		li $a0,0
		li $a1,1
		sw $a0,v1 #guarda la coordenada x de las vidas
		sw $a1,v2 #guarda la coordenada y de las vidas
		li $a0,51
		li $a1,1
		sw $a0,Contadorx#guarda la coordenada x de los bloques destruidos
		sw $a1,Contadory#guarda la coordenada y de los bloques destruidos	

		
		lw $ra 0($sp)
		addi $sp,$sp,4
		
		
		jr $ra
##################################################
#Bloques, Paleta y Bola inicial
##################################################
#set establece los valores iniciales de los bloques para la pantalla 1
 #a0 limite izquierdo del bloque
 #a1 altura del bloque
 #a2 color del bloque	
set:
	#fila 1
	li $a0, 3
	li $a1, 7
	sw $a1, yBlock1
	li $t2, 10
	move $s7, $gp
	addi $s7, $s7, 20000
	sw $s7, base1
	lw $a2, colorTwo
	jal set_blocks
	
	#fila 2
	li $a0, 3
	li $a1, 10
	sw $a1, yBlock2
	li $t2, 10
	lw $s7, base1
	addi $s7, $s7, 48
	sw $s7, base2
	lw $a2, blueColor
	jal set_blocks
	
	#fila 3
	li $a0, 3
	li $a1, 13
	sw $a1, yBlock3
	li $t2, 10
	lw $s7, base2
	addi $s7, $s7, 48
	sw $s7, base3
	lw $a2, colorTwo
	jal set_blocks
	
	#fila 4
	li $a0, 3
	li $a1, 16
	sw $a1, yBlock4
	li $t2, 10
	lw $s7, base3
	addi $s7, $s7, 48
	sw $s7, base4
	lw $a2, blueColor
	jal set_blocks
	
	#fila 5
	li $a0, 3
	li $a1, 19
	sw $a1, yBlock5
	li $t2, 10
	lw $s7, base4
	addi $s7, $s7, 48
	sw $s7, base5
	lw $a2, colorTwo
	jal set_blocks
	
	j Set
#set2 establece los valores iniciales de los bloques para la pantalla 2	
 #a0 limite izquierdo del bloque
 #a1 altura del bloque
 #a2 color del bloque
 #t2 establece la cantidad de columnas 	
set2:
	#fila 1
	li $a0, 3
	li $a1, 7
	sw $a1, yBlock1
	li $t2, 10
	move $s7, $gp
	addi $s7, $s7, 20000
	sw $s7, base1
	lw $a2, blueColor
	jal set_blocks
	
	#fila 2
	li $a0, 5
	li $a1, 11
	sw $a1, yBlock2
	li $t2, 10
	lw $s7, base1
	addi $s7, $s7, 48
	sw $s7, base2
	lw $a2, blueColor
	jal set_blocks
	
	#fila 3
	li $a0, 3
	li $a1, 16
	sw $a1, yBlock3
	li $t2, 10
	lw $s7, base2
	addi $s7, $s7, 48
	sw $s7, base3
	lw $a2, blueColor
	jal set_blocks
	
	#fila 4
	li $a0, 5
	li $a1, 25
	sw $a1, yBlock4
	li $t2, 10
	lw $s7, base3
	addi $s7, $s7, 48
	sw $s7, base4
	lw $a2, ballColor
	jal set_blocks
	
 #Set establece los valores iniciales de la paleta y la bola
 #a0 limite izquierdo de la paleta
 #a1 altura de la paleta
 #a2 color de la paleta
 #a3 limite derecho de la paleta
 #s0 posicion x de la bola
 #s1 posicion y de la bola
 #s2 color de la bola	 	
Set: #establece los valores iniciales
	li $a0, 30 #establece el limite izquierdo de la paleta
	sw $a0, PaddleL #guarda el limite izquierdo
	lw $a3, PaddleW #llama el tamano de la paleta
	add $a3, $a0, $a3 
	sw $a3, PaddleR #guarda el limite derecho
	li $a1, 55 #establece la altura de la paleta
	sw $a1, PaddleY
	lw $a2, colorOne #carga el color de la paleta	
	jal DrawHorizontalLine #llama a dibujar la paleta
		
	li $s0, 31 #establece la posicion X de la bola
	lw $s2, colorTwo #establece el color de la bola
	li $s1, 52 #establece la posicion y de la bola
	li $s4, 1 #guarda la direccion inicial x
	li $s5, 1 #guarda la direccion inicial y
	j main

#Pinta el bloque completo y guarda el limite izquierdo del mismo en el arreglo	
#a0 limite izquierdo del bloque
#a3 limite derecho del bloque			
set_blocks:
	addi $sp, $sp, -4
	sw $ra, 0($sp)

	lw $t1, BlockWidth
	sw $a0, 0($s7)
	add $a3, $a0, $t1
	
	jal DrawHorizontalLine

	
	addi $s7, $s7, 4
	addi $a3, $a3, 3
	move $a0, $a3
	
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	
	addi $t2, $t2 -1
	bgez  $t2, set_blocks
	jr $ra
		
	
##################################################
#Inicio
##################################################		
Inicio:
	jal DrawPointB #llama a dibujar la bola
	jal DrawHorizontalLine #llama a dibujar la paleta
	jal Wait
	
	
main: #creo que esto es innecesario por ahora, se puede llamar directamente a Wait en inicio con un jump
	jal Wait #entra al menu wait

	j main #se encicla
			
	
########################################################
#Bola
########################################################	
moveBall: 
	
	addi $sp, $sp, -8
	sw $ra, 0($sp)
	lw $s2, backgroundColor #carga el color del fondo
	jal DrawPointB #borra la bola actual
	
#########Guarda los valores de bola y carga los de paleta#####	
	sw $a0, Ba0
	sw $a1, Ba1
	sw $a3, Ba3
	lw $a0, PaddleL
	lw $a1, PaddleY
	lw $a3, PaddleR
	jal checkPaddle #verifica la colision con la paleta
	lw $a0, Ba0
	lw $a1, Ba1
	lw $a3, Ba3
	
	

	jal collision #verifica la colision con los bordes
	
	
	jal check #verifica la colision con los bloques
	
	lw $s5, yDirection #carga la direccion y de la bola
	add $s0, $s0, $s4 #a la posicion del eje x le suma la direccion x
	add $s1, $s1, $s5 #a la posicion del eje y le suma la direccion y
	lw $s2, colorOne #carga el color de la bola
	jal DrawPointB #dibuja la nueva bola

	##############
	#aumenta la velocidad conforme se destruyen los bloques
	sw $t0, saveUno
	sw $t1, saveDos
	lw $t0, bloqueOut
	
	li $t1, 10
	bgt $t1, $t0, wait45
	
	li $t1, 30
	bgt $t1, $t0, wait10
	
	li $t1, 56
	bgt $t1, $t0, wait2
	
	##############
m:
	lw $t1, saveDos
	lw $t0, saveUno
	sw $s0, 4($sp)
	li $s0, 10	# establece el tiempo de pausa
	li $v0, 32	# pause for 50 milisec
	syscall
	lw $s0, 4($sp)
	lw $ra, 0($sp)
	addi $sp, $sp, 8
	
	jr $ra
	
##################################################
#colision con bordes
##################################################	
collision:
	addi $t0, $zero, 0 #carga el limite 0
	addi $t3,$zero, 3#carga el limite 3 superior para no colisionar con las vidas
	addi $t1, $zero, 50 #carga el limite derecho
	addi $t2, $zero, 62 #carga el limite inferior
	
	addi $sp, $sp, -4
	sw $ra, 0($sp) 
	
	bne $s1, $t3, Down	#verifica si la bola llego al limite superior
	jal changeY 
Down:
	beq $s1, $t2, collisionDown #verifica si la bola llego al limite inferior
	
Left:
	bne $s0, $t0, Right #verifica si la bola llego al limite izquierdo
	jal changeX
Right:
	bne $s0, $t1, out #verifica si la bola llego al limite derecho
	jal changeX
out:	
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

collisionDown:
		addi $t8,$zero,4 #establece la posicion de la ultima vida
		jal borrarvidas #salta a borrar vidas
		lw $a0,v1 #carga la posicion x de la vida
		lw $a1,v2 #carga la posicion y de la vida
		add $a0,$a0,$zero# borra la vida
		add $a1,$a1,$zero
		lw $a2, backgroundColor
		jal DrawPoint #salta a pintar de negro la posicion de la vida
		jal Clearpaddle #salta a limpiar paleta
		j Set #salta a reestablecer la bola y la paleta
borrarvidas:
		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		lw $t5,v1
		beq $t5, $t8, gameover #comprueba si se acaban las vidas y salta a game over
		addi $t5,$t5,2 #le suma 2 a la coordenada x de la vida
		sw $t5,v1 #sobreescribe la coordenada x de la vida
		lw $ra 0($sp)
		addi $sp,$sp,4
		
		
		jr $ra
		

##################################################
#colision paleta
##################################################
checkPaddle: #verifica si choco con la paleta
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t7, yDirection #carga la direccion y de la bola
	add $s1, $s1, $t7 #adelanta la posicion y de la bola en 1
	lw $t0, PaddleY #carga la coordenada y de la paleta
	beq $s1, $t0, t # verficia si bola+1 esta en la misma linea que la paleta
O:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	
	addi $t8, $zero, -1 #carga el valor de -1
	mult $t8, $t7 #lo multiplica por la direccion y de la bola
	mflo $t7
	add $s1, $s1, $t7 #lo suma para devolver el valor de s1 a su estado original (bola+1 -1)
	jr $ra
		
t:
	lw $t3, PaddleR #carga el limite derecho de la paleta
	addi $t3, $t3, 1 #le suma 1 al limite derecho
	blt $s0, $t3, Liz #verifica si la posicion x de la bola va a estar a la izquierda de ese limite
	j O
Liz:
	lw $t4, PaddleL #carga el limite izquierdo de la paleta
	addi $t4, $t4, -1 #le resta 1 al limite izquierdo
	bgt $s0, $t4, JchangeY #verifica si la posicion x de la bola va a estar a la derecha de ese limite
	j O
JchangeY:#invierte la posicion y de la pelota
	jal changeY #invierta la direccion y de la bola en caso de que la bola vaya a chocar con la paleta
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
############################################################
#Cambio de direccion
############################################################
changeY: #cambia la direccion y de la bola
	addi $sp, $sp, -4
	sw $t1, 0($sp)
	addi $t1, $zero, -1 #carga menos -1
	mult $s5, $t1 #multiplica -1 por la direccion y
	mflo $s5 #agarra los ultimos 16bits
	sw $s5, yDirection #los guarda en la direccion y
	lw $t1, 0($sp)
	addi $sp, $sp, 4
	jr $ra
#$t0
#$s0
changeX: #cambia la direccion x de la bola
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $t0, $zero, -1 #toma el valor de -1
	mult $s4, $t0 #lo multiplica por la direccion x
	mflo $s4 #guarda los ultimos 16bits
	sw $s4, xDirection #almacena la nueva direccion x
	lw $t0, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
# $a0 contains x position
# $a1 contains y position
# $a2 contains color
DrawPointB: #dibuja un punto (1 bit) especial para la bola
		sll $t0, $s1, 6   # multiply y-coordinate by 64 (length of the field)
		addu $v0, $s0, $t0
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		sw $s2, ($v0)		# draw the color to the location
		
		jr $ra
		
		
		

##################################################
#colision bloques
##################################################
check:
	addi $sp, $sp, -4
	sw $ra, 0($sp)

	lw $t3, yDirection
	add $s1, $s1, $t3 #adelanta la bola en una posicion
	
	lw $t0, yBlock1 #carga la altura de la fila 1
	beq $s1, $t0, fila1
	lw $t0, yBlock2 #carga la altura de la fila 2
	beq $s1, $t0, fila2
	lw $t0, yBlock3
	beq $s1, $t0, fila3
	lw $t0, yBlock4
	beq $s1, $t0, fila4
	lw $t0, yBlock5
	beq $s1, $t0, fila5
end_check:

	addi $t4, $zero, -1 #carga el valor de -1
	mult $t4, $t3 #lo multiplica por la direccion y de la bola
	mflo $t4
	add $s1, $s1, $t4 #lo suma para devolver el valor de s1 a su estado original (bola+1 -1)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
fila1:
	lw $s7, base1 #carga la base del arreglo para la fila 1
	li $t2, 10 #cantidad de columnas
	lw $a1, yBlock1 #altura de la fila 1
	j load_blocks
fila2:
	lw $s7, base2
	li $t2, 10
	lw $a1,yBlock2
	j load_blocks
fila3:
	lw $s7, base3
	li $t2, 10
	lw $a1,yBlock3
	j load_blocks
fila4:
	lw $s7, base4
	li $t2, 10
	lw $a1,yBlock4
	j load_blocks
fila5:
	lw $s7, base5
	li $t2, 10
	lw $a1,yBlock5
	j load_blocks
	

load_blocks:
	lw $t1, BlockWidth
	lw $a0, 0($s7)
	
	beq $a0, $zero, keep_going #verifica si en la posicion del arreglo hay un 0
	
	add $a3, $a0, $t1
	
	jal check_block_collision
keep_going:	#continua con la siguiente posicion del arreglo
	addi $s7, $s7, 4
	addi $a3, $a3, 3
	move $a0, $a3

				
	addi $t2, $t2, -1
	bgez  $t2, load_blocks
	j end_check

check_block_collision: #si hay bloque, verifica si colosiona o no
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	
	addi $a0, $a0, -2
	bgt $s0, $a0, Verf_der
end_cbc:	
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
Verf_der:
	addi $a3, $a3, 2
	blt $s0, $a3, choque
	j end_cbc
	
choque: #si existe el choque:
	addi $a0, $a0, 2
	addi $a3, $a3, -2
	jal changeY
	
	lw $a2, backgroundColor
	jal DrawHorizontalLine
	
	sw $t0, saveUno
	lw $t0, bloqueOut
	addi $t0, $t0, 1
	sw $t0, bloqueOut #contador de bloques destruidos
	sw $t1, saveTres
	li $t1, 55 #cantidad total de bloques
	beq $t0, $t1, Win
					
	li $t1, 10
	bne $t1, $t0, c1
	li $t1, 12 #a los 10 bloques destruidos aumenta el tamano de la paleta
	sw $t1, PaddleW
	jal powerUp
c1:	
	li $t1, 30
	bne $t1, $t0, c2
	li $t1, 4 #a los 30 bloques destruidos disminuye el tamano de la paleta
	sw $t1, PaddleW
	jal powerUp
c2:		
	
	lw $t1, saveTres
	lw $t0, saveUno

	move $a0, $zero
	sw  $a0, 0($s7)  
	jal Contador # salta a contador de bloques destruidos
	j end_cbc
	

Contador: 	
	
		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		lw $a0,Contadorx#carga la posicion en x
		lw $a1,Contadory#carga la posicion en y
		add $t1,$zero,61#establece el valor final de x
		beq $a0,$t1, filanext# si llega al final de la pantalla salta a fila next
		add $a0,$a0,$zero#posicion x para pintar bit
		add $a1,$a1,$zero#posicion y para pintar bit
		lw $a2, ballColor#color del bit

		addi $a0,$a0,2 #le suma 2 a la coordenada en x
		sw $a0,Contadorx#guarda la coordenada x
		sw $a1,Contadory#guarda la coordenaday
		jal DrawPoint #pinta el bit
		lw $ra 0($sp)
		addi $sp,$sp,4
		
		
		jr $ra

filanext:
	addi $a1,$a1,2 #le suma 2 a la coordenada en y
	add $a0,$zero,53 #reinicia el valor de la coordenada en x
	add $a0,$a0,$zero
	add $a1,$a1,$zero
	lw $a2, ballColor
	sw $a0,Contadorx
	sw $a1,Contadory
	jal DrawPoint
	lw $ra 0($sp)
	addi $sp,$sp,4
		
		
	jr $ra
#################################################################################
#Dibujo
#################################################################################


DrawHorizontalLine: #dibuja la linea horizontal
		
		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		
		sub $t9, $a3, $a0
		move $t1, $a0
		
	HorizontalLoop:
		
		add $a0, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		
		bge $t9, 0, HorizontalLoop
		
		lw $ra, 0($sp)		# put return back
   		addi $sp, $sp, 4

		jr $ra
		
DrawPoint:
	sll $t0, $a1, 6   # multiply y-coordinate by 64 (length of the field)
	addu $v0, $a0, $t0
	sll $v0, $v0, 2
	addu $v0, $v0, $gp
	sw $a2, ($v0)		# draw the color to the location
		
	jr $ra
	

DrawVerticalLine:
		
		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		
		sub $t9, $a3, $a1
		move $t1, $a1
		
	VerticalLoop:
		
		add $a1, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		
		bge $t9, 0, VerticalLoop
		
		lw $ra, 0($sp)		# put return back
   		addi $sp, $sp, 4
   		
   		
		jr $ra
		


#################################################################################
#Paleta
#################################################################################

Wait:
	##Nuevo##
	sw $a0, Aa0 
	sw $a1, Aa1
	sw $a3, Aa3
	jal moveBall #mueve la bola
	lw $a0, Aa0
	lw $a1, Aa1
	lw $a3, Aa3
	##Nuevo##
	
	move $t9, $a0 #protege el valor de $a0
	li $a0, 45	#establece el tiempo de pausa
	li $v0, 32	# pause for 55 milisec
	syscall	
	move $a0, $t9 #reestablece el valor de $a0

	lw $a2, backgroundColor  # se carga el color del fondo
	jal DrawHorizontalLine  # se borra la paleta actual

	lw $t1, 0xFFFF0004 #recibe la tecla
	lw $t8, Der #carga la letra D
	beq $t1, $t8, moveRight    #compara si la tecla ingresada es la D
	lw $t8, Izq #carga la letra A
	beq $t1, $t8, moveLeft #compara si la tecla ingresada es la A
Stop:#deja la paleta tal como esta
	lw $a2, colorOne #carga el color de la paleta		
	jal DrawHorizontalLine #dibuja la paleta nueva
	j Wait	
	
moveRight: #mueve la paleta a la derecha										
	addi $t6, $zero, 50 #carga el limite derecho de la pantalla
	#lw $a0, PaddleL
	#lw $a3, PaddleR
	beq  $a3, $t6, Stop #verifica si la paleta ya llego al limite
	addi $a0, $a0,1 # se le agrega 1 al limite derecho de la nueva paleta
	addi $a3, $a3,1 # se le agrega 1 al limite izquierdo de la nueva paleta
	sw $a0, PaddleL #guarda el nuevo limite izquierdo
	sw $a3, PaddleR	#guarda el nuevo limite derecho		
	lw $a2, colorOne 
	jal DrawHorizontalLine
	sw $zero, 0xFFFF0004 #borra la tecla ingresada
	j Wait #regresa a wait
	
moveLeft: #mueve la paleta a la izquierda
	addi $t0, $zero, 0 #carga el limite izquierdo de la pantalla
	#lw $a0, PaddleL
	#lw $a3, PaddleR
	beq  $a0, $t0, Stop
	addi $a0, $a0,-1 # se le agrega -1 al limite izquierdo de la nueva paleta
	addi $a3, $a3,-1 # se le agrega -1 al limite derecho de la nueva paleta
	sw $a0, PaddleL 
	sw $a3, PaddleR				
	lw $a2, colorOne
	jal DrawHorizontalLine
	sw $zero, 0xFFFF0004
	j Wait
##################################################
#Limpiar
##################################################
ClearBoard:
		lw $t0, backgroundColor
		li $t1, 16384 # The number of pixels in the display
	StartCLoop:
		subi $t1, $t1, 4
		addu $t2, $t1, $gp
		sw $t0, ($t2)
		beqz $t1, EndCLoop
		j StartCLoop
	EndCLoop:
		jr $ra

			
Clearpaddle:

		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		li $a0, 0
		lw $a1, PaddleY
		lw $a2, backgroundColor
		li $a3, 49
		jal DrawHorizontalLine						
		lw $ra 0($sp)
		addi $sp,$sp,4
		jr $ra							
																																																																																																																		
##################################################
#game over
##################################################																																	
gameover:
	jal ClearBoard
		
	Lineas:
		li $a0, 6
		li $a1, 1
		lw $a2, backgroundColor
		
		jal DrawPoint
	
		
		li $a0, 10
		li $a1, 13
		lw $a2, blueColor
		li $a3, 13
		jal DrawHorizontalLine
		
		li $a0, 10
		li $a1, 18 
		lw $a2, blueColor
		li $a3, 13
		jal DrawHorizontalLine
		
		li $a0, 12
		li $a1, 16 
		lw $a2, blueColor
		li $a3, 13
		jal DrawHorizontalLine
		
		li $a0, 15
		li $a1, 13 
		lw $a2, blueColor
		li $a3, 18
		jal DrawHorizontalLine
		
		li $a0, 15
		li $a1, 16 
		lw $a2, blueColor
		li $a3, 18
		jal DrawHorizontalLine
		
		li $a0, 29
		li $a1, 13 
		lw $a2, blueColor
		li $a3, 32
		jal DrawHorizontalLine
		
		li $a0, 29
		li $a1, 15
		lw $a2, blueColor
		li $a3, 32
		jal DrawHorizontalLine
		
		li $a0, 29
		li $a1, 18
		lw $a2, blueColor
		li $a3, 32
		jal DrawHorizontalLine
		
		li $a0, 34
		li $a1, 13
		lw $a2, blueColor
		li $a3, 38
		jal DrawHorizontalLine
		
		li $a0, 34
		li $a1, 18
		lw $a2, blueColor
		li $a3, 38
		jal DrawHorizontalLine
		
		li $a0, 46
		li $a1, 13
		lw $a2, blueColor
		li $a3, 49
		jal DrawHorizontalLine
		
		li $a0, 46
		li $a1, 15
		lw $a2, blueColor
		li $a3, 49
		jal DrawHorizontalLine
		
		li $a0, 46
		li $a1, 18
		lw $a2, blueColor
		li $a3, 49
		jal DrawHorizontalLine
		
		li $a0, 51
		li $a1, 13
		lw $a2, blueColor
		li $a3, 54
		jal DrawHorizontalLine
		
		li $a0, 51
		li $a1, 15
		lw $a2, blueColor
		li $a3, 54
		jal DrawHorizontalLine


		li $a0, 10
		li $a1, 13
		lw $a2, blueColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 13
		li $a1, 16
		lw $a2, blueColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 15
		li $a1, 13
		lw $a2, blueColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 18
		li $a1, 13
		lw $a2, blueColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 21
		li $a1, 13
		lw $a2, blueColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 27
		li $a1, 13
		lw $a2, blueColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 22
		li $a1, 13
		lw $a2, blueColor
		li $a3, 14
		jal DrawVerticalLine
		
		li $a0, 23
		li $a1, 14
		lw $a2, blueColor
		li $a3, 15
		jal DrawVerticalLine
		
		li $a0, 24
		li $a1, 15
		lw $a2, blueColor
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 25
		li $a1, 14
		lw $a2, blueColor
		li $a3, 15
		jal DrawVerticalLine
		
		li $a0, 26
		li $a1, 13
		lw $a2, blueColor
		li $a3, 14
		jal DrawVerticalLine
		
		li $a0, 29
		li $a1, 13
		lw $a2, blueColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 34
		li $a1, 13
		lw $a2, blueColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 38
		li $a1, 13
		lw $a2, blueColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 40
		li $a1, 13
		lw $a2, blueColor
		li $a3, 14
		jal DrawVerticalLine
		
		li $a0, 41
		li $a1, 15
		lw $a2, blueColor
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 42
		li $a1, 17
		lw $a2, blueColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 43
		li $a1, 15
		lw $a2, blueColor
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 44
		li $a1, 13
		lw $a2, blueColor
		li $a3, 14
		jal DrawVerticalLine
		
		li $a0, 46
		li $a1, 13
		lw $a2, blueColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 51
		li $a1, 13
		lw $a2, blueColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 53
		li $a1, 16
		lw $a2, blueColor
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 54
		li $a1, 17
		lw $a2, blueColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 54
		li $a1, 13
		lw $a2, blueColor
		li $a3, 15
		jal DrawVerticalLine
		
		li $a0, 3000	#establece el tiempo de pausa
		li $v0, 32	# pause for 3 sec
		syscall	
		
		j NewGame
##################################################
#aumento de velocidad
##################################################
wait2:	
	move $t9, $a0 #protege el valor de $a0
	li $a0, 2	#establece el tiempo de pausa
	li $v0, 32	# pause for 2 milisec
	syscall	
	move $a0, $t9 #reestablece el valor de $a0
	j m
wait10:	
	move $t9, $a0 #protege el valor de $a0
	li $a0, 10	#establece el tiempo de pausa
	li $v0, 32	# pause for 10 milisec
	syscall	
	move $a0, $t9 #reestablece el valor de $a0
	j m

wait45:		
	move $t9, $a0 #protege el valor de $a0
	li $a0, 45	#establece el tiempo de pausa
	li $v0, 32	# pause for 45 milisec
	syscall	
	move $a0, $t9 #reestablece el valor de $a0
	j m
	
##################################################
#powerUP
##################################################
powerUp:#llamar a la instruccion y borrar la paleta para establecer una nueva
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal Clearpaddle
	
	lw $a0, PaddleL #guarda el limite izquierdo
	lw $a3, PaddleW #llama el tamano de la paleta
	add $a3, $a0, $a3 
	sw $a3, PaddleR #guarda el limite derecho
	lw $a1, PaddleY
	lw $a2, colorOne #carga el color de la paleta	
	
	jal Clearpaddle
	
	jal DrawHorizontalLine #llama a dibujar la paleta
	
	li $a0, 55
	li $v0, 32
	syscall
	
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

##################################################
#Win
##################################################
Win: 
	jal ClearBoard
		
	winnerlines:
	
		
		li $a0, 29
		li $a1, 10
		lw $a2, blueColor
		li $a3, 33
		jal DrawHorizontalLine
		
		li $a0, 29
		li $a1, 17
		lw $a2, blueColor
		li $a3, 33
		jal DrawHorizontalLine
		
		
		li $a0, 15
		li $a1, 10
		lw $a2, blueColor
		li $a3, 12
		jal DrawVerticalLine
		
		li $a0, 16
		li $a1, 12
		lw $a2, blueColor
		li $a3, 14
		jal DrawVerticalLine
		
		li $a0, 17
		li $a1, 14
		lw $a2, blueColor
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 18
		li $a1, 16
		lw $a2, blueColor
		li $a3, 17
		jal DrawVerticalLine
		
		li $a0, 19
		li $a1, 15
		lw $a2, blueColor
		li $a3, 17
		jal DrawVerticalLine
		
		li $a0, 20
		li $a1, 13
		lw $a2, blueColor
		li $a3, 15
		jal DrawVerticalLine
		
		li $a0, 21
		li $a1, 10
		lw $a2, blueColor
		li $a3, 13
		jal DrawVerticalLine
		
		li $a0, 22
		li $a1, 13
		lw $a2, blueColor
		li $a3, 15
		jal DrawVerticalLine
		
		li $a0, 23
		li $a1, 15
		lw $a2, blueColor
		li $a3, 17
		jal DrawVerticalLine
		
		li $a0, 24
		li $a1, 16
		lw $a2, blueColor
		li $a3, 17
		jal DrawVerticalLine
		
		li $a0, 25
		li $a1, 14
		lw $a2, blueColor
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 26
		li $a1, 12
		lw $a2, blueColor
		li $a3, 14
		jal DrawVerticalLine
		
		li $a0, 27
		li $a1, 10
		lw $a2, blueColor
		li $a3, 12
		jal DrawVerticalLine
		
		li $a0, 31
		li $a1, 10
		lw $a2, blueColor
		li $a3, 17
		jal DrawVerticalLine
		
		li $a0, 35
		li $a1, 10
		lw $a2, blueColor
		li $a3, 17
		jal DrawVerticalLine
		
		li $a0, 36
		li $a1, 10
		lw $a2, blueColor
		li $a3, 12
		jal DrawVerticalLine
		
		li $a0, 37
		li $a1, 12
		lw $a2, blueColor
		li $a3, 14
		jal DrawVerticalLine
		
		li $a0, 38
		li $a1, 14
		lw $a2, blueColor
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 39
		li $a1, 16
		lw $a2, blueColor
		li $a3, 17
		jal DrawVerticalLine
		
		li $a0, 40
		li $a1, 10
		lw $a2, blueColor
		li $a3, 17
		jal DrawVerticalLine
		
		
		
		li $a0, 3000	#establece el tiempo de pausa
		li $v0, 32	# pause for 3 sec
		syscall	
		
		j NewGame

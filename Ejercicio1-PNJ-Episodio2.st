!classDefinition: #PruebasInteracionesConCarolinaLaCurandera category: 'Ejercicio1-PNJ-Episodio2'!
DenotativeObject subclass: #PruebasInteracionesConCarolinaLaCurandera
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1-PNJ-Episodio2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PruebasInteracionesConCarolinaLaCurandera class' category: 'Ejercicio1-PNJ-Episodio2'!
PruebasInteracionesConCarolinaLaCurandera class
	instanceVariableNames: ''!

!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'interacciones con un personaje' stamp: 'AR 10/3/2021 10:04:48'!
test01CuandoLaCuranderaInteractuaPorPrimeraVezConUnPersonajeLeRespondeConSuPrimerFrase
	| mensaje |
	self olvidarInteraccionesYOpiniones.
	
	mensaje := self carolinaLaCurandera interactuarCon: self hamilton.
	
	Assert that: mensaje isEqualTo: '¿Estás enfermo forastero?'.! !

!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'interacciones con un personaje' stamp: 'AR 10/3/2021 09:53:17'!
test02CuandoLaCuranderaInteractuaPorSegundaVezConUnPersonajeLeRespondeConSuSegundaFrase
	| mensaje |
	self olvidarInteraccionesYOpiniones.
	self carolinaLaCurandera interactuarCon: self hamilton.
	
	mensaje := self carolinaLaCurandera interactuarCon: self hamilton.
	
	Assert that: mensaje isEqualTo: 'Ah, solo quieres conversar'.! !

!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'interacciones con un personaje' stamp: 'AR 10/3/2021 09:53:17'!
test03CuandoLaCuranderaInteractuaPorTerceraVezConUnPersonajeLeRespondeConSuTercerFrase
	| mensaje |
	self olvidarInteraccionesYOpiniones.
	self carolinaLaCurandera interactuarCon: self hamilton.
	self carolinaLaCurandera interactuarCon: self hamilton.
	
	mensaje := self carolinaLaCurandera interactuarCon: self hamilton.
	
	Assert that: mensaje isEqualTo: 'Cuando tengas una aflicción, ven a verme'.! !


!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'interacciones con mas de un personaje' stamp: 'AR 10/3/2021 09:53:17'!
test04LaCuranderaMantieneDosInteraccionesConDiferentesPersonajes
	self olvidarInteraccionesYOpiniones.
	
	Assert that: (self carolinaLaCurandera interactuarCon: self hamilton) isEqualTo: '¿Estás enfermo forastero?'.
	Assert that: (self carolinaLaCurandera interactuarCon: self tirion) isEqualTo: '¿Estás enfermo forastero?'.! !

!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'interacciones con mas de un personaje' stamp: 'AR 10/3/2021 09:53:16'!
test05LaCuranderaMantieneDosInteraccionesCompletasConDiferentesPersonajes
	self olvidarInteraccionesYOpiniones.
	
	Assert that: (self carolinaLaCurandera interactuarCon: self hamilton) isEqualTo: '¿Estás enfermo forastero?'.
	
	Assert that: (self carolinaLaCurandera interactuarCon: self tirion) isEqualTo: '¿Estás enfermo forastero?'.
	Assert that: (self carolinaLaCurandera interactuarCon: self tirion) isEqualTo: 'Ah, solo quieres conversar'.
	Assert that: (self carolinaLaCurandera interactuarCon: self tirion) isEqualTo: 'Cuando tengas una aflicción, ven a verme'.
	
	Assert that: (self carolinaLaCurandera interactuarCon: self hamilton) isEqualTo: 'Ah, solo quieres conversar'.
	Assert that: (self carolinaLaCurandera interactuarCon: self hamilton) isEqualTo: 'Cuando tengas una aflicción, ven a verme'.
	! !


!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'interacciones con personajes prometedores' stamp: 'AR 10/3/2021 09:53:17'!
test06CuandoLaCuranderaInteractuaPorPrimeraVezConUnPersonajeCalificadoPorElPuebloComoPrometedorLeRespondeConSuPrimerFrase
	| mensaje |	
	self olvidarInteraccionesYOpiniones.
	self hacerQueRiverwoodVeaPrometedorAHamilton.
	
	mensaje := self carolinaLaCurandera interactuarCon: self hamilton.
	
	Assert that: mensaje isEqualTo: 'Salud aventurero!!'.
! !

!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'interacciones con personajes prometedores' stamp: 'AR 10/3/2021 09:53:17'!
test07CuandoLaCuranderaInteractuaPorSegundaVezConUnPersonajeCalificadoPorElPuebloComoPrometedorLeRespondeConSuSegundaFrase
	| mensaje |
	self olvidarInteraccionesYOpiniones.
	self hacerQueRiverwoodVeaPrometedorAHamilton.
	self carolinaLaCurandera interactuarCon: self hamilton.
	
	mensaje := self carolinaLaCurandera interactuarCon: self hamilton.
	
	Assert that: mensaje isEqualTo: 'Toma esta pócima que te hará crecer el pelo. Y cuando tengas una aflicción, ven a verme'.
! !


!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'cambio de opiniones' stamp: 'AR 10/3/2021 09:53:16'!
test08CuandoLaCuranderaTerminaSuRepertorioDeFrasesConUnPersonajeCambiaLaOpinionDelPuebloSobreElPersonajeAPrometedor
	self olvidarInteraccionesYOpiniones.
	self carolinaLaCurandera interactuarCon: self hamilton.
	self carolinaLaCurandera interactuarCon: self hamilton.	
	self carolinaLaCurandera interactuarCon: self hamilton.	
	
	Assert isTrue: (self esVistoPorElPuebloComoPrometedor: self hamilton).! !

!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'cambio de opiniones' stamp: 'AR 10/3/2021 09:53:17'!
test09CuandoLaCuranderaCambiaLaOpinionDelPuebloSobreElPersonajeAPrometedorReiniciaSuHiloDeDialogoConElPersonaje
	self olvidarInteraccionesYOpiniones.
	self carolinaLaCurandera interactuarCon: self hamilton.
	self carolinaLaCurandera interactuarCon: self hamilton.	
	self carolinaLaCurandera interactuarCon: self hamilton.	
	
	Assert that: 'Salud aventurero!!' isEqualTo: (self carolinaLaCurandera interactuarCon: self hamilton)! !

!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'cambio de opiniones' stamp: 'AR 10/3/2021 09:53:17'!
test10CuandoLaCuranderaCambiaLaOpinionDelPuebloSobreElPersonajeAPrometedorReiniciaElHiloDeDialogoDelGuardiaConElPersonaje
	self olvidarInteraccionesYOpiniones.
	self treborElGuardia interactuarCon: self hamilton.
	
	self carolinaLaCurandera interactuarCon: self hamilton.
	self carolinaLaCurandera interactuarCon: self hamilton.	
	self carolinaLaCurandera interactuarCon: self hamilton.	

	Assert that: 'Bienvenido aventurero!!' isEqualTo: (self treborElGuardia interactuarCon: self hamilton)! !


!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'personajes' stamp: 'AR 10/3/2021 10:07:58'!
carolinaLaCurandera
	^ CarolinaLaCurandera! !

!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'personajes' stamp: 'AR 10/2/2021 11:36:50'!
hamilton
	^#Hamilton! !

!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'personajes' stamp: 'AR 10/2/2021 11:36:31'!
tirion
	^#Tirion! !

!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'personajes' stamp: 'JMB 9/21/2021 20:52:20'!
treborElGuardia
	^ TreborElGuardiaDeSkyrim ! !


!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'opiniones e interacciones' stamp: 'AR 10/3/2021 11:54:16'!
esVistoPorElPuebloComoPrometedor: unPersonaje
	"Assert isTrue: false description:" ^Riverwood esUnPersonajeConfiable: unPersonaje .! !

!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'opiniones e interacciones' stamp: 'AR 10/3/2021 10:14:34'!
hacerQueLaCuranderaOlvideSusInteracciones
	CarolinaLaCurandera olvidar.! !

!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'opiniones e interacciones' stamp: 'AR 10/3/2021 10:16:38'!
hacerQueRiverwoodOlvideTodasSusCalificaciones
	Riverwood olvidarCalificaciones.! !

!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'opiniones e interacciones' stamp: 'AR 10/3/2021 11:43:40'!
hacerQueRiverwoodVeaPrometedorAHamilton
	"Assert isTrue: false description:" Riverwood hacerUnPersonajeConfiableParaRiverwood: self hamilton.! !

!PruebasInteracionesConCarolinaLaCurandera class methodsFor: 'opiniones e interacciones' stamp: 'JMB 9/25/2021 12:48:36'!
olvidarInteraccionesYOpiniones
	self hacerQueLaCuranderaOlvideSusInteracciones.	
	self hacerQueRiverwoodOlvideTodasSusCalificaciones.
! !


!classDefinition: #PruebasInteracionesConTreborElGuardia category: 'Ejercicio1-PNJ-Episodio2'!
DenotativeObject subclass: #PruebasInteracionesConTreborElGuardia
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1-PNJ-Episodio2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PruebasInteracionesConTreborElGuardia class' category: 'Ejercicio1-PNJ-Episodio2'!
PruebasInteracionesConTreborElGuardia class
	instanceVariableNames: ''!

!PruebasInteracionesConTreborElGuardia class methodsFor: 'interacciones con un personaje' stamp: 'JMB 9/25/2021 13:03:53'!
test01CuandoElGuardiaInteractuaPorPrimeraVezConUnPersonajeLeRespondeConSuPrimerFrase
	| mensaje |
	self olvidarInteraccionesYOpiniones.
	
	mensaje := self treborElGuardia interactuarCon: self hamilton.
	
	Assert that: mensaje isEqualTo: 'Hola forastero'.
! !

!PruebasInteracionesConTreborElGuardia class methodsFor: 'interacciones con un personaje' stamp: 'JMB 9/25/2021 13:04:08'!
test02CuandoElGuardiaInteractuaPorSegundaVezConUnPersonajeLeRespondeConSuSegundaFrase
	| mensaje |
	self olvidarInteraccionesYOpiniones.
	self treborElGuardia interactuarCon: self hamilton.
	
	mensaje := self treborElGuardia interactuarCon: self hamilton.
	
	Assert that: mensaje isEqualTo: '¿Todo bien?'.! !

!PruebasInteracionesConTreborElGuardia class methodsFor: 'interacciones con un personaje' stamp: 'JMB 9/25/2021 13:04:25'!
test03CuandoElGuardiaOlvidaInteraccionesPreviasConUnPersonajeAlVolverAInteractuarLeRespondeConSuPrimerFrase
	| mensaje |
	self olvidarInteraccionesYOpiniones.
	self treborElGuardia interactuarCon: self hamilton.
	self treborElGuardia olvidar.
	
	mensaje := self treborElGuardia interactuarCon: self hamilton.
	
	Assert that: mensaje isEqualTo: 'Hola forastero'.! !

!PruebasInteracionesConTreborElGuardia class methodsFor: 'interacciones con un personaje' stamp: 'JMB 9/25/2021 13:04:35'!
test04CuandoElGuardiaInteractuaPorTerceraVezConUnPersonajeLeRespondeConSuTercerFrase
	| mensaje |
	self olvidarInteraccionesYOpiniones.
	self treborElGuardia interactuarCon: self hamilton.
	self treborElGuardia interactuarCon: self hamilton.
	
	mensaje := self treborElGuardia interactuarCon: self hamilton.
	
	Assert that: mensaje isEqualTo: '¿Algún problema?'.! !

!PruebasInteracionesConTreborElGuardia class methodsFor: 'interacciones con un personaje' stamp: 'JMB 9/25/2021 13:04:44'!
test05CuandoElGuardiaInterctuaYTerminoSuRepertorioDeFrasesConUnPersonajeLeRespondeConSuUltimaFrase
	| mensaje |
	self olvidarInteraccionesYOpiniones.
	self treborElGuardia interactuarCon: self hamilton.
	self treborElGuardia interactuarCon: self hamilton.
	self treborElGuardia interactuarCon: self hamilton.
	
	mensaje := self treborElGuardia interactuarCon: self hamilton.
	
	Assert that: mensaje isEqualTo: '¿Algún problema?'.! !


!PruebasInteracionesConTreborElGuardia class methodsFor: 'interacciones con mas de un personaje' stamp: 'JMB 9/25/2021 12:53:36'!
test06ElGuardiaMantieneDosInteraccionesConDiferentesPersonajes
	self olvidarInteraccionesYOpiniones.

	Assert that: (self treborElGuardia interactuarCon: self hamilton) isEqualTo: 'Hola forastero'.
	Assert that: (self treborElGuardia interactuarCon: self tirion) isEqualTo: 'Hola forastero'.! !

!PruebasInteracionesConTreborElGuardia class methodsFor: 'interacciones con mas de un personaje' stamp: 'JMB 9/25/2021 12:53:43'!
test07ElGuardiaMantieneDosInteraccionesCompletasConDiferentesPersonajes
	self olvidarInteraccionesYOpiniones.
	
	Assert that: (self treborElGuardia interactuarCon: self hamilton) isEqualTo: 'Hola forastero'.
	
	Assert that: (self treborElGuardia interactuarCon: self tirion) isEqualTo: 'Hola forastero'.
	Assert that: (self treborElGuardia interactuarCon: self tirion) isEqualTo: '¿Todo bien?'.
	Assert that: (self treborElGuardia interactuarCon: self tirion) isEqualTo: '¿Algún problema?'.
	
	Assert that: (self treborElGuardia interactuarCon: self hamilton) isEqualTo: '¿Todo bien?'.
	Assert that: (self treborElGuardia interactuarCon: self hamilton) isEqualTo: '¿Algún problema?'.
	! !


!PruebasInteracionesConTreborElGuardia class methodsFor: 'interacciones con personajes prometedores' stamp: 'JMB 9/25/2021 12:54:46'!
test08CuandoElGuardiaInteractuaPorPrimeraVezConUnPersonajeCalificadoPorElPuebloComoPrometedorLeRespondeConSuPrimerFrase
	| mensaje |
	self olvidarInteraccionesYOpiniones.
	self hacerQueRiverwoodVeaPrometedorAHamilton.
	
	mensaje := self treborElGuardia interactuarCon: self hamilton.
	
	Assert that: mensaje isEqualTo: 'Bienvenido aventurero!!'.
! !

!PruebasInteracionesConTreborElGuardia class methodsFor: 'interacciones con personajes prometedores' stamp: 'JMB 9/25/2021 12:55:02'!
test09CuandoElGuardiaInteractuaPorSegundaVezConUnPersonajeCalificadoPorElPuebloComoPrometedorLeRespondeConSuSegundaFrase
	| mensaje |
	self olvidarInteraccionesYOpiniones.
	self hacerQueRiverwoodVeaPrometedorAHamilton.
	self treborElGuardia interactuarCon: self hamilton.
	
	mensaje := self treborElGuardia interactuarCon: self hamilton.
	
	Assert that: mensaje isEqualTo: 'Espero que tengas una buena estadia en Riverwood'.
! !


!PruebasInteracionesConTreborElGuardia class methodsFor: 'personajes' stamp: 'AR 10/2/2021 11:35:37'!
hamilton
	^#Hamilton! !

!PruebasInteracionesConTreborElGuardia class methodsFor: 'personajes' stamp: 'AR 10/2/2021 11:35:14'!
tirion
	^#Tirion! !

!PruebasInteracionesConTreborElGuardia class methodsFor: 'personajes' stamp: 'JMB 9/21/2021 20:42:44'!
treborElGuardia
	^ TreborElGuardiaDeSkyrim ! !


!PruebasInteracionesConTreborElGuardia class methodsFor: 'opiniones e interacciones' stamp: 'JMB 9/21/2021 20:49:11'!
hacerQueElGuardiaOlvideSusInteracciones
	TreborElGuardiaDeSkyrim olvidar.! !

!PruebasInteracionesConTreborElGuardia class methodsFor: 'opiniones e interacciones' stamp: 'AR 10/2/2021 18:38:56'!
hacerQueRiverwoodOlvideTodasSusCalificaciones

	Riverwood olvidarCalificaciones.
	! !

!PruebasInteracionesConTreborElGuardia class methodsFor: 'opiniones e interacciones' stamp: 'AR 10/2/2021 18:48:02'!
hacerQueRiverwoodVeaPrometedorAHamilton

	"Assert isTrue: false description:" Riverwood hacerUnPersonajeConfiableParaRiverwood: self hamilton .! !

!PruebasInteracionesConTreborElGuardia class methodsFor: 'opiniones e interacciones' stamp: 'JMB 9/25/2021 12:52:12'!
olvidarInteraccionesYOpiniones
	self hacerQueElGuardiaOlvideSusInteracciones. 	
	self hacerQueRiverwoodOlvideTodasSusCalificaciones.
! !


!classDefinition: #Riverwood category: 'Ejercicio1-PNJ-Episodio2'!
DenotativeObject subclass: #Riverwood
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1-PNJ-Episodio2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Riverwood class' category: 'Ejercicio1-PNJ-Episodio2'!
Riverwood class
	instanceVariableNames: 'listaDePersonajesConfiables'!

!Riverwood class methodsFor: 'nil' stamp: 'AR 10/2/2021 18:27:29'!
esUnPersonajeConfiable: unPersonajeJugadorAInteractuar

	^listaDePersonajesConfiables includes: unPersonajeJugadorAInteractuar .! !

!Riverwood class methodsFor: 'nil' stamp: 'AR 10/2/2021 18:28:49'!
hacerUnPersonajeConfiableParaRiverwood: unPersonajeJugadorAInteractuar

	listaDePersonajesConfiables add: unPersonajeJugadorAInteractuar.! !

!Riverwood class methodsFor: 'nil' stamp: 'AR 10/2/2021 18:38:09'!
olvidarCalificaciones

	listaDePersonajesConfiables := OrderedCollection new.! !


!Riverwood class methodsFor: 'as yet unclassified' stamp: 'AR 10/3/2021 15:02:02'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	listaDePersonajesConfiables := ((OrderedCollection new) add: #Hamilton; yourself).! !


!classDefinition: #TreborElGuardiaDeSkyrim category: 'Ejercicio1-PNJ-Episodio2'!
DenotativeObject subclass: #TreborElGuardiaDeSkyrim
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1-PNJ-Episodio2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TreborElGuardiaDeSkyrim class' category: 'Ejercicio1-PNJ-Episodio2'!
TreborElGuardiaDeSkyrim class
	instanceVariableNames: 'a cantidadDeInteraccionesPorPersonaje frasesParaDesconocidos calificacionDelPueblo frasesParaJugadoresPrometedores'!


!TreborElGuardiaDeSkyrim class methodsFor: 'interacciones' stamp: 'AR 10/2/2021 12:19:22'!
interactuarCon: unPersonajeJugadorAInteractuar
	self recordarInteraccionCon: unPersonajeJugadorAInteractuar.
	^ self responderSegunCantidadDeInteraccionesCon: unPersonajeJugadorAInteractuar.! !

!TreborElGuardiaDeSkyrim class methodsFor: 'interacciones' stamp: 'AR 10/2/2021 12:03:48'!
olvidar
	cantidadDeInteraccionesPorPersonaje := Dictionary new.! !


!TreborElGuardiaDeSkyrim class methodsFor: 'interacciones - privado' stamp: 'AR 10/2/2021 11:59:10'!
recordarInteraccionCon: unPersonajeJugadorAInteractuar

	| cantidadDeInteracciones2 |
	
	cantidadDeInteracciones2:= cantidadDeInteraccionesPorPersonaje at: unPersonajeJugadorAInteractuar ifAbsent: [0].
	
	cantidadDeInteraccionesPorPersonaje at: unPersonajeJugadorAInteractuar put: cantidadDeInteracciones2 + 1.
	
! !

!TreborElGuardiaDeSkyrim class methodsFor: 'interacciones - privado' stamp: 'AR 10/2/2021 18:59:44'!
responderSegunCantidadDeInteraccionesCon: unPersonajeJugadorAInteractuar

	| cantidadDeInteraccione  |
	
	cantidadDeInteraccione := cantidadDeInteraccionesPorPersonaje at: unPersonajeJugadorAInteractuar.
	
	
	(Riverwood esUnPersonajeConfiable: unPersonajeJugadorAInteractuar) ifTrue: [^ frasesParaJugadoresPrometedores at: 
	(cantidadDeInteraccione min: frasesParaJugadoresPrometedores size)] ifFalse: [

	^ frasesParaDesconocidos at: (cantidadDeInteraccione min: frasesParaDesconocidos size)].! !


!TreborElGuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'AR 10/3/2021 15:02:02'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	a := nil.
	cantidadDeInteraccionesPorPersonaje := ((Dictionary new) add: (#Hamilton->1); yourself).
	frasesParaDesconocidos := #('Hola forastero' '¿Todo bien?' '¿Algún problema?' ).
	calificacionDelPueblo := nil.
	frasesParaJugadoresPrometedores := #('Bienvenido aventurero!!' 'Espero que tengas una buena estadia en Riverwood' ).! !


!classDefinition: #CarolinaLaCurandera category: 'Ejercicio1-PNJ-Episodio2'!
TreborElGuardiaDeSkyrim subclass: #CarolinaLaCurandera
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1-PNJ-Episodio2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CarolinaLaCurandera class' category: 'Ejercicio1-PNJ-Episodio2'!
CarolinaLaCurandera class
	instanceVariableNames: 'frasesParaJugadoresPrometedoresDeLaCurandera cantidadDeInteraccionesPorPersonajeDeLaCurandera frasesParaDesconocidosDeLaCurandera'!

!CarolinaLaCurandera class methodsFor: 'as yet unclassified' stamp: 'AR 10/3/2021 15:02:02'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	a := nil.
	cantidadDeInteraccionesPorPersonaje := nil.
	frasesParaDesconocidos := #('¿Estás enfermo forastero?' 'Ah, solo quieres conversar' 'Cuando tengas una aflicción, ven a verme' ).
	calificacionDelPueblo := nil.
	frasesParaJugadoresPrometedores := #('Salud aventurero!!' 'Toma esta pócima que te hará crecer el pelo. Y cuando tengas una aflicción, ven a verme' ).
	frasesParaJugadoresPrometedoresDeLaCurandera := #('Salud aventurero' 'Toma esta pocima que te hara crecer el pelo. Y cuando tengas una aliccion, ven a verme' ).
	cantidadDeInteraccionesPorPersonajeDeLaCurandera := ((Dictionary new) add: (#Hamilton->0); yourself).
	frasesParaDesconocidosDeLaCurandera := #('Estas enfermo forastero?' 'Ah, solo quieres conversar?' 'Cuando tengas una afliccion, ven a verme' ).! !

!CarolinaLaCurandera class methodsFor: 'as yet unclassified' stamp: 'AR 10/2/2021 19:58:33'!
olvidar
	cantidadDeInteraccionesPorPersonajeDeLaCurandera := Dictionary new.! !

!CarolinaLaCurandera class methodsFor: 'as yet unclassified' stamp: 'AR 10/2/2021 19:56:48'!
recordarInteraccionCon: unPersonajeJugadorAInteractuar

	| cantidadDeInteracciones2 |
	
	cantidadDeInteracciones2:= cantidadDeInteraccionesPorPersonajeDeLaCurandera at: unPersonajeJugadorAInteractuar ifAbsent: [0].
	
	cantidadDeInteraccionesPorPersonajeDeLaCurandera at: unPersonajeJugadorAInteractuar put: cantidadDeInteracciones2 + 1.
	! !

!CarolinaLaCurandera class methodsFor: 'as yet unclassified' stamp: 'AR 10/3/2021 11:01:11'!
reiniciarCantidadDeInteracciones
	self olvidar .
	TreborElGuardiaDeSkyrim olvidar .! !

!CarolinaLaCurandera class methodsFor: 'as yet unclassified' stamp: 'AR 10/3/2021 14:14:23'!
responderSegunCantidadDeInteraccionesCon: unPersonajeJugadorAInteractuar

	| cantidadDeInteracciónes  |
	
	cantidadDeInteracciónes := cantidadDeInteraccionesPorPersonajeDeLaCurandera at: unPersonajeJugadorAInteractuar.
	
	(Riverwood esUnPersonajeConfiable: unPersonajeJugadorAInteractuar) 
	ifTrue: [^ frasesParaJugadoresPrometedores at: (cantidadDeInteracciónes min: frasesParaJugadoresPrometedores size)] 
	ifFalse: [(cantidadDeInteracciónes = 3) ifTrue: [ Riverwood hacerUnPersonajeConfiableParaRiverwood: unPersonajeJugadorAInteractuar.   								 		   		 		cantidadDeInteraccionesPorPersonajeDeLaCurandera at: unPersonajeJugadorAInteractuar put: 0. TreborElGuardiaDeSkyrim olvidar. ].
		^ frasesParaDesconocidos at: (cantidadDeInteracciónes min: 	frasesParaDesconocidos size)].

	

	

	
	
	! !

Riverwood initializeAfterFileIn!
TreborElGuardiaDeSkyrim initializeAfterFileIn!
CarolinaLaCurandera initializeAfterFileIn!
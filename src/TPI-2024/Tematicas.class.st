Class {
	#name : #Tematicas,
	#superclass : #Object,
	#instVars : [
		'tematicas',
		'preguntas',
		'temporary',
		'statements'
	],
	#category : #'TPI-2024'
}

{ #category : #initialize }
Tematicas >> initialize [ 
	tematicas := Array new:64.
	preguntas := Array new: (tematicas size * 40).
	self initializeElementosDeLaTablaPeriodica.
	self initializeCapitalesDelMundo.
	self initializeAtletismo.
	self initializePremiosOscar.
	self initializeMitosYLeyendas.
	self initializeInnovacionesTecnologicas.
	self initializeDinosaurios.
	self initializePremiosNobel.
	self initializeRecordsOlimpicos.
	self initializeEnfermedades.



]

{ #category : #initialization }
Tematicas >> initializeAtletismo [
    preguntas at: 81 put: #('¿Qué distancia se corre en una maratón?' '42.195 km' '21.097 km' '50 km' '10 km').
    preguntas at: 82 put: #('¿Qué atleta ostenta el récord mundial de los 100 metros lisos en 2024?' 'Usain Bolt' 'Carl Lewis' 'Tyson Gay' 'Justin Gatlin').
    preguntas at: 83 put: #('¿Qué disciplina del atletismo incluye el lanzamiento de una bola pesada?' 'Bala' 'Jabalina' 'Martillo' 'Disco').
    preguntas at: 84 put: #('¿Cuántos eventos incluye un decatlón?' '10' '5' '7' '12').
    preguntas at: 85 put: #('¿Qué distancia se corre en una carrera de medio fondo?' '800 m' '100 m' '5000 m' '42.195 km').
    preguntas at: 86 put: #('¿Qué se mide en el salto de longitud?' 'La distancia recorrida' 'La altura alcanzada' 'El tiempo en el aire' 'La velocidad').
    preguntas at: 87 put: #('¿Qué implemento se utiliza en el lanzamiento de jabalina?' 'Lanza' 'Disco' 'Bala' 'Martillo').
    preguntas at: 88 put: #('¿En qué evento se corre con obstáculos y agua?' '3000 m obstáculos' '100 m vallas' 'Maratón' '10,000 m').
    preguntas at: 89 put: #('¿Qué se utiliza para marcar el inicio de una carrera?' 'Pistola de salida' 'Bandera' 'Silbato' 'Bocina').
    preguntas at: 90 put: #('¿Cuál es el relevo más corto en atletismo?' '4x100 m' '4x200 m' '4x400 m' '4x800 m').
    preguntas at: 91 put: #('¿En qué disciplina se utiliza un implemento llamado "martillo"?' 'Lanzamiento de martillo' 'Lanzamiento de disco' 'Lanzamiento de jabalina' 'Lanzamiento de bala').
    preguntas at: 92 put: #('¿Qué distancia tiene una pista de atletismo estándar?' '400 m' '200 m' '800 m' '1000 m').
    preguntas at: 93 put: #('¿Qué atleta ganó 4 medallas de oro en los Juegos Olímpicos de Berlín 1936?' 'Jesse Owens' 'Carl Lewis' 'Usain Bolt' 'Emil Zátopek').
    preguntas at: 94 put: #('¿Qué disciplina combina carreras y lanzamiento?' 'Decatlón' 'Pentatlón' 'Heptatlón' 'Triatlón').
    preguntas at: 95 put: #('¿Qué prueba de atletismo incluye 42 obstáculos en total?' '3000 m obstáculos' '100 m vallas' '400 m vallas' '1500 m').
    preguntas at: 96 put: #('¿Quién fue el primer atleta en romper la barrera de los 4 minutos en la milla?' 'Roger Bannister' 'Sebastian Coe' 'Haile Gebrselassie' 'Mo Farah').
    preguntas at: 97 put: #('¿Qué significa la sigla IAAF en atletismo?' 'Federación Internacional de Atletismo' 'Asociación Internacional de Fútbol' 'Asociación Internacional de Atletas' 'Federación Internacional de Atletas y Fútbol').
    preguntas at: 98 put: #('¿En qué año debutó el salto con pértiga como evento olímpico?' '1896' '1900' '1924' '1932').
    preguntas at: 99 put: #('¿Qué implemento se lanza en forma de disco?' 'Disco' 'Bala' 'Martillo' 'Jabalina').
    preguntas at: 100 put: #('¿Cuál es el evento más largo en pista en atletismo?' '10,000 m' '5000 m' 'Media maratón' 'Maratón').
    preguntas at: 101 put: #('¿Qué técnica se utiliza en el salto de altura moderno?' 'Fosbury Flop' 'Tijera' 'Rodillo ventral' 'Salto de pie').
    preguntas at: 102 put: #('¿Qué atleta tiene el récord mundial actual en maratón en 2024?' 'Eliud Kipchoge' 'Kenenisa Bekele' 'Mo Farah' 'Haile Gebrselassie').
    preguntas at: 103 put: #('¿Cuál es la superficie estándar de las pistas de atletismo?' 'Tartan' 'Tierra' 'Césped' 'Arena').
    preguntas at: 104 put: #('¿Qué se mide en el salto triple?' 'La distancia' 'La altura' 'El tiempo' 'La velocidad').
    preguntas at: 105 put: #('¿Qué disciplina combina carrera, salto y lanzamiento?' 'Pentatlón' 'Triatlón' 'Decatlón' 'Heptatlón').
    preguntas at: 106 put: #('¿Cuántos testigos se usan en un relevo 4x400?' '1' '2' '4' '0').
    preguntas at: 107 put: #('¿Qué país lidera el medallero histórico en atletismo?' 'Estados Unidos' 'Rusia' 'Jamaica' 'Kenia').
    preguntas at: 108 put: #('¿Qué implemento es el más ligero en atletismo?' 'Jabalina' 'Disco' 'Bala' 'Martillo').
    preguntas at: 109 put: #('¿Qué prueba tiene un solo intento válido?' 'Maratón' 'Lanzamiento de bala' 'Salto en largo' 'Lanzamiento de disco').
    preguntas at: 110 put: #('¿Qué atleta femenino ostenta el récord mundial de los 100 metros en 2024?' 'Florence Griffith-Joyner' 'Shelly-Ann Fraser-Pryce' 'Carmelita Jeter' 'Marion Jones').
    preguntas at: 111 put: #('¿Qué evento de atletismo incluye una vuelta completa a la pista?' '400 m' '200 m' '800 m' '100 m').
    preguntas at: 112 put: #('¿Qué disciplina requiere el uso de vallas?' '110 m con vallas' '100 m planos' '400 m planos' '3000 m obstáculos').
    preguntas at: 113 put: #('¿Qué atleta ganó 3 oros consecutivos en salto largo olímpico?' 'Carl Lewis' 'Jesse Owens' 'Bob Beamon' 'Mike Powell').
    preguntas at: 114 put: #('¿Cuál es el peso del martillo masculino en atletismo?' '7.26 kg' '5 kg' '6.5 kg' '8 kg').
    preguntas at: 115 put: #('¿Qué implemento se utiliza en el relevo?' 'Testigo' 'Bala' 'Disco' 'Jabalina').
    preguntas at: 116 put: #('¿Qué disciplina se corre en un circuito fuera del estadio?' 'Cross country' '10 km' '5000 m' '400 m').
    preguntas at: 117 put: #('¿Qué significa el término "foul" en salto de longitud?' 'Intento inválido' 'Empate' 'Máxima distancia' 'Penalización').
    preguntas at: 118 put: #('¿Qué se utiliza para medir los tiempos en carreras?' 'Cronómetros electrónicos' 'Silbatos' 'Pistolas de inicio' 'Cintas métricas').
    preguntas at: 119 put: #('¿Qué evento incluye cinco disciplinas?' 'Pentatlón' 'Heptatlón' 'Decatlón' 'Triatlón').
    preguntas at: 120 put: #('¿Qué país es conocido por su dominio en las pruebas de fondo?' 'Etiopía' 'Jamaica' 'Rusia' 'Alemania').

]

{ #category : #initialization }
Tematicas >> initializeCapitalesDelMundo [

	tematicas at:2 put:'CapitalesDelMundo'.
	
    preguntas at: 41 put: #('¿Cuál es la capital de Australia?' 'Canberra' 'Sídney' 'Melbourne' 'Perth').
    preguntas at: 42 put: #('¿Cuál es la capital de Canadá?' 'Ottawa' 'Toronto' 'Montreal' 'Vancouver').
    preguntas at: 43 put: #('¿Cuál es la capital de Japón?' 'Tokio' 'Osaka' 'Kioto' 'Hiroshima').
    preguntas at: 44 put: #('¿Cuál es la capital de Argentina?' 'Buenos Aires' 'Córdoba' 'Mendoza' 'Rosario').
    preguntas at: 45 put: #('¿Cuál es la capital de California, EE.UU.?' 'Sacramento' 'Los Ángeles' 'San Francisco' 'San Diego').
    preguntas at: 46 put: #('¿Cuál es la capital de Brasil?' 'Brasilia' 'São Paulo' 'Río de Janeiro' 'Salvador').
    preguntas at: 47 put: #('¿Cuál es la capital de Sudáfrica?' 'Pretoria' 'Johannesburgo' 'Ciudad del Cabo' 'Durban').
    preguntas at: 48 put: #('¿Cuál es la capital de la India?' 'Nueva Delhi' 'Bombay' 'Calcuta' 'Bangalore').
    preguntas at: 49 put: #('¿Cuál es la capital de España?' 'Madrid' 'Barcelona' 'Valencia' 'Sevilla').
    preguntas at: 50 put: #('¿Cuál es la capital de Egipto?' 'El Cairo' 'Alejandría' 'Luxor' 'Aswan').
    preguntas at: 51 put: #('¿Cuál es la capital de Francia?' 'París' 'Berlín' 'Roma' 'Londres').
    preguntas at: 52 put: #('¿Cuál es la capital de los Estados Unidos?' 'Washington D.C.' 'Nueva York' 'Los Ángeles' 'Chicago').
    preguntas at: 53 put: #('¿Cuál es la capital de Italia?' 'Roma' 'Venecia' 'Milán' 'Nápoles').
    preguntas at: 54 put: #('¿Cuál es la capital de México?' 'Ciudad de México' 'Guadalajara' 'Monterrey' 'Puebla').
    preguntas at: 55 put: #('¿Cuál es la capital de la provincia de Andalucía en España?' 'Sevilla' 'Granada' 'Córdoba' 'Málaga').
    preguntas at: 56 put: #('¿Cuál es la capital del estado de Nueva York en Estados Unidos?' 'Albany' 'Nueva York' 'Buffalo' 'Rochester').
    preguntas at: 57 put: #('¿Cuál es la capital de la región de Lombardía en Italia?' 'Milán' 'Venecia' 'Roma' 'Florencia').
    preguntas at: 58 put: #('¿Cuál es la capital de la provincia de Ontario en Canadá?' 'Toronto' 'Ottawa' 'Quebec' 'Hamilton').
    preguntas at: 59 put: #('¿Cuál es la capital del estado de São Paulo en Brasil?' 'São Paulo' 'Campinas' 'Santos' 'Ribeirão Preto').
    preguntas at: 60 put: #('¿Cuál es la capital del estado de Nueva Gales del Sur en Australia?' 'Sídney' 'Melbourne' 'Brisbane' 'Perth').
    preguntas at: 61 put: #('¿Cuál es la capital de la región de Cataluña en España?' 'Barcelona' 'Valencia' 'Zaragoza' 'Palma de Mallorca').
    preguntas at: 62 put: #('¿Cuál es la capital del estado de Bayern (Baviera) en Alemania?' 'Múnich' 'Berlín' 'Hamburgo' 'Frankfurt').
    preguntas at: 63 put: #('¿Cuál es la capital de la República Checa?' 'Praga' 'Brno' 'Ostrava' 'Pilsen').
    preguntas at: 64 put: #('¿Cuál es la capital de Escocia?' 'Edimburgo' 'Glasgow' 'Aberdeen' 'Dundee').
    preguntas at: 65 put: #('¿Cuál es la capital de China?' 'Pekín' 'Shanghái' 'Cantón' 'Hong Kong').
    preguntas at: 66 put: #('¿Cuál es la capital de Rusia?' 'Moscú' 'San Petersburgo' 'Novosibirsk' 'Kazán').
    preguntas at: 67 put: #('¿Cuál es la capital de la región de Campania en Italia?' 'Nápoles' 'Roma' 'Milán' 'Florencia').
    preguntas at: 68 put: #('¿Cuál es la capital de la provincia de Buenos Aires en Argentina?' 'La Plata' 'Mar del Plata' 'Rosario' 'Bahía Blanca').
    preguntas at: 69 put: #('¿Cuál es la capital de Turquía?' 'Ankara' 'Estambul' 'Izmir' 'Antalya').
    preguntas at: 70 put: #('¿Cuál es la capital de Polonia?' 'Varsovia' 'Cracovia' 'Gdansk' 'Wroclaw').
    preguntas at: 71 put: #('¿Cuál es la capital de Vietnam?' 'Hanoi' 'Ho Chi Minh' 'Da Nang' 'Hai Phong').
    preguntas at: 72 put: #('¿Cuál es la capital de Alemania?' 'Berlín' 'Fráncfort' 'Múnich' 'Hamburgo').
    preguntas at: 73 put: #('¿Cuál es la capital de Corea del Sur?' 'Seúl' 'Busan' 'Incheon' 'Daejeon').
    preguntas at: 74 put: #('¿Cuál es la capital de Colombia?' 'Bogotá' 'Medellín' 'Cali' 'Barranquilla').
    preguntas at: 75 put: #('¿Cuál es la capital de Noruega?' 'Oslo' 'Bergen' 'Stavanger' 'Trondheim').
    preguntas at: 76 put: #('¿Cuál es la capital del estado de Texas, EE.UU.?' 'Austin' 'Dallas' 'Houston' 'San Antonio').
    preguntas at: 77 put: #('¿Cuál es la capital de Perú?' 'Lima' 'Arequipa' 'Cusco' 'Trujillo').
    preguntas at: 78 put: #('¿Cuál es la capital de Portugal?' 'Lisboa' 'Oporto' 'Faro' 'Coimbra').
    preguntas at: 79 put: #('¿Cuál es la capital de Suecia?' 'Estocolmo' 'Gotemburgo' 'Malmö' 'Upsala').
    preguntas at: 80 put: #('¿Cuál es la capital de Chile?' 'Santiago' 'Valparaíso' 'Concepción' 'Antofagasta').

]

{ #category : #initialization }
Tematicas >> initializeDinosaurios [
	tematicas at:6 put: 'Dinosaurios'.
	
    preguntas at: 241 put: #('¿Cuál es el dinosaurio más grande conocido?' 'Brachiosaurus' 'Tyrannosaurus rex' 'Triceratops' 'Velociraptor').
    preguntas at: 242 put: #('¿Qué dinosaurio es conocido por su cuello largo y su cuerpo masivo?' 'Brachiosaurus' 'Stegosaurus' 'Spinosaurus' 'Allosaurus').
    preguntas at: 243 put: #('¿Qué dinosaurio tenía una cresta sobre su cabeza, utilizada posiblemente para el cortejo?' 'Parasaurolophus' 'Triceratops' 'Velociraptor' 'Ankylosaurus').
    preguntas at: 244 put: #('¿Qué dinosaurio fue uno de los depredadores más temidos del período Cretácico?' 'Tyrannosaurus rex' 'Allosaurus' 'Brachiosaurus' 'Diplodocus').
    preguntas at: 245 put: #('¿En qué período vivieron los dinosaurios?' 'Mesozoico' 'Pérmico' 'Cenozoico' 'Paleozoico').
    preguntas at: 246 put: #('¿Cuál de estos dinosaurios era herbívoro?' 'Triceratops' 'Tyrannosaurus rex' 'Velociraptor' 'Spinosaurus').
    preguntas at: 247 put: #('¿Qué dinosaurio es famoso por sus espinas a lo largo de su espalda?' 'Stegosaurus' 'Velociraptor' 'Triceratops' 'Tyrannosaurus rex').
    preguntas at: 248 put: #('¿Qué dinosaurio es conocido por ser extremadamente rápido y ágil?' 'Velociraptor' 'Tyrannosaurus rex' 'Triceratops' 'Brachiosaurus').
    preguntas at: 249 put: #('¿Qué dinosaurio se caracteriza por tener tres cuernos en su cabeza?' 'Triceratops' 'Diplodocus' 'Stegosaurus' 'Spinosaurus').
    preguntas at: 250 put: #('¿Qué dinosaurio tenía un gran sail o vela sobre su espalda?' 'Spinosaurus' 'Brachiosaurus' 'Tyrannosaurus rex' 'Allosaurus').
    preguntas at: 251 put: #('¿Cómo se llama la extinción masiva que terminó con los dinosaurios?' 'Extinción del Cretácico-Terciario' 'Extinción del Pérmico' 'Extinción del Triásico' 'Extinción del Devónico').
    preguntas at: 252 put: #('¿Qué dinosaurio es famoso por su gran mandíbula y dientes afilados?' 'Tyrannosaurus rex' 'Brachiosaurus' 'Velociraptor' 'Parasaurolophus').
    preguntas at: 253 put: #('¿Qué dinosaurio se caracteriza por tener una gran "vela" en su espalda?' 'Dimetrodon' 'Brachiosaurus' 'Velociraptor' 'Spinosaurus').
    preguntas at: 254 put: #('¿Cuál de estos dinosaurios vivió durante el periodo Triásico?' 'Coelophysis' 'Tyrannosaurus rex' 'Velociraptor' 'Spinosaurus').
    preguntas at: 255 put: #('¿Qué dinosaurio tenía una cola pesada, utilizada posiblemente como un arma?' 'Ankylosaurus' 'Triceratops' 'Tyrannosaurus rex' 'Velociraptor').
    preguntas at: 256 put: #('¿Qué dinosaurio es conocido por sus garras retráctiles y su gran velocidad?' 'Velociraptor' 'Tyrannosaurus rex' 'Brachiosaurus' 'Stegosaurus').
    preguntas at: 257 put: #('¿Cuál de estos dinosaurios tiene una cabeza en forma de casco?' 'Pachycephalosaurus' 'Triceratops' 'Velociraptor' 'Brachiosaurus').
    preguntas at: 258 put: #('¿Qué dinosaurio era un gran depredador de agua, famoso por su tamaño y dientes afilados?' 'Spinosaurus' 'Allosaurus' 'Tyrannosaurus rex' 'Stegosaurus').
    preguntas at: 259 put: #('¿Qué dinosaurio es conocido por sus grandes dientes y su poder de ataque?' 'Tyrannosaurus rex' 'Velociraptor' 'Brachiosaurus' 'Stegosaurus').
    preguntas at: 260 put: #('¿Qué dinosaurio es famoso por ser un gran herbívoro con un cuello largo?' 'Diplodocus' 'Stegosaurus' 'Velociraptor' 'Brachiosaurus').
    preguntas at: 261 put: #('¿Qué dinosaurio se caracteriza por sus dientes en forma de hoja?' 'Stegosaurus' 'Allosaurus' 'Brachiosaurus' 'Velociraptor').
    preguntas at: 262 put: #('¿Cuál era la dieta del Spinosaurus?' 'Carnívoro' 'Herbívoro' 'Omnívoro' 'Insectívoro').
    preguntas at: 263 put: #('¿Qué dinosaurio es conocido por tener un pico similar al de un loro?' 'Psittacosaurus' 'Parasaurolophus' 'Pteranodon' 'Archaeopteryx').
    preguntas at: 264 put: #('¿Qué dinosaurio vivió durante el Cretácico y es famoso por sus cuernos?' 'Triceratops' 'Velociraptor' 'Brachiosaurus' 'Allosaurus').
    preguntas at: 265 put: #('¿Qué dinosaurio era conocido por ser el "Rey de los dinosaurios"?' 'Tyrannosaurus rex' 'Spinosaurus' 'Brachiosaurus' 'Velociraptor').
    preguntas at: 266 put: #('¿Qué dinosaurio tenía una gran mandíbula con dientes afilados, como un tiburón?' 'Spinosaurus' 'Allosaurus' 'Diplodocus' 'Triceratops').
    preguntas at: 267 put: #('¿Qué tipo de dinosaurio es el Velociraptor?' 'Carnívoro' 'Herbívoro' 'Omnívoro' 'Acuático').
    preguntas at: 268 put: #('¿Cómo se llamaba el supercontinente durante la era de los dinosaurios?' 'Pangea' 'Gondwana' 'Laurasia' 'Rodinia').
    preguntas at: 269 put: #('¿Qué dinosaurio tenía una cabeza masiva con una piel dura que podría haber servido como defensa?' 'Ankylosaurus' 'Stegosaurus' 'Velociraptor' 'Spinosaurus').
    preguntas at: 270 put: #('¿Cuál era el tamaño promedio de un Velociraptor?' '3 metros' '1 metro' '10 metros' '7 metros').
    preguntas at: 271 put: #('¿Qué dinosaurio fue el más rápido de su época?' 'Velociraptor' 'Tyrannosaurus rex' 'Spinosaurus' 'Brachiosaurus').
    preguntas at: 272 put: #('¿Cómo se llama el período en el que aparecieron los primeros dinosaurios?' 'Triásico' 'Jurásico' 'Cretácico' 'Devónico').
    preguntas at: 273 put: #('¿Qué dinosaurio tenía una corona de huesos alrededor de su cabeza?' 'Triceratops' 'Stegosaurus' 'Velociraptor' 'Brachiosaurus').
    preguntas at: 274 put: #('¿Qué dinosaurio es conocido por ser el más grande de los herbívoros?' 'Brachiosaurus' 'Tyrannosaurus rex' 'Triceratops' 'Stegosaurus').
    preguntas at: 275 put: #('¿Qué dinosaurio se conoce por ser uno de los más inteligentes y cazadores sociales?' 'Velociraptor' 'Allosaurus' 'Tyrannosaurus rex' 'Spinosaurus').
    preguntas at: 276 put: #('¿Qué dinosaurio es conocido por su gran hocico y dientes largos?' 'Spinosaurus' 'Velociraptor' 'Brachiosaurus' 'Triceratops').
    preguntas at: 277 put: #('¿Qué dinosaurio tenía una gran cola utilizada para equilibrarse?' 'Brachiosaurus' 'Tyrannosaurus rex' 'Velociraptor' 'Stegosaurus').
    preguntas at: 278 put: #('¿Qué dinosaurio era conocido por su gran tamaño y su cuello largo, alcanzando grandes alturas?' 'Brachiosaurus' 'Triceratops' 'Velociraptor' 'Allosaurus').
    preguntas at: 279 put: #('¿Qué dinosaurio tenía un cuerpo cubierto por placas óseas en la espalda?' 'Stegosaurus' 'Ankylosaurus' 'Tyrannosaurus rex' 'Velociraptor').
    preguntas at: 280 put: #('¿Cuál es la principal teoría sobre la extinción de los dinosaurios?' 'Impacto de un asteroide' 'Enfriamiento global' 'Supervolcán' 'Enfermedades').

]

{ #category : #initialization }
Tematicas >> initializeElementosDeLaTablaPeriodica [
	"va desde el 1 al 40"
	preguntas at: 1 put: #('¿Cuál es el elemento químico más ligero?' 'Hidrógeno' 'Helio' 'Litio' 'Berilio').
	preguntas at: 2 put: #('¿Qué elemento tiene el número atómico 79?' 'Oro' 'Plata' 'Platino' 'Cobre').
	preguntas at: 3 put: #('¿Cuál es el elemento más abundante en el universo?' 'Hidrógeno' 'Oxígeno' 'Carbono' 'Helio').
	preguntas at: 4 put: #('¿Qué elemento es un gas noble?' 'Xenón' 'Nitrógeno' 'Cloro' 'Fósforo').	
	preguntas at: 5 put: #('¿Cuál es el símbolo químico del Sodio?' 'Na' 'So' 'Sd' 'Ns').
	preguntas at: 6 put: #('¿Qué elemento es un metal alcalino?' 'Potasio' 'Calcio' 'Hierro' 'Aluminio').
	preguntas at: 7 put: #('¿Cuál es el elemento más electronegativo?' 'Flúor' 'Oxígeno' 'Cloro' 'Azufre').
	preguntas at: 8 put: #('¿Qué elemento fue descubierto en 1940?' 'Neptunio' 'Uranio' 'Americio' 'Californio').
	preguntas at: 9 put: #('¿Cuál es el símbolo químico del Mercurio?' 'Hg' 'Me' 'Mr' 'Mc').
	preguntas at: 10 put: #('¿Qué elemento es un metaloide?' 'Boro' 'Sodio' 'Aluminio' 'Calcio').
	preguntas at: 11 put: #('¿Cuál es el elemento más pesado conocido naturalmente?' 'Uranio-238' 'Plutonio' 'Uranio' 'Plutón').
	preguntas at: 12 put: #('¿Qué elemento es un gas noble que se usa en lámparas de neón?' 'Neón' 'Argón' 'Kriptón' 'Xenón').
	preguntas at: 13 put: #('¿Cuál es el símbolo químico del Wolframio?' 'W' 'Wl' 'Wo' 'Wg').
	preguntas at: 14 put: #('¿Qué elemento es un halógeno?' 'Bromo' 'Calcio' 'Potasio' 'Hierro').
	preguntas at: 15 put: #('¿Cuál es el elemento más abundante en la corteza terrestre?' 'Oxígeno' 'Hierro' 'Silicio' 'Aluminio').
	preguntas at: 16 put: #('¿Qué elemento se usa en baterías recargables?' 'Litio' 'Plomo' 'Níquel' 'Zinc').
	preguntas at: 17 put: #('¿Cuál es el punto de fusión más bajo entre los metales?' 'Mercurio' 'Plomo' 'Oro' 'Aluminio').
	preguntas at: 18 put: #('¿Qué elemento es radiactivo?' 'Radio' 'Estroncio' 'Zinc' 'Cobre').
	preguntas at: 19 put: #('¿Cuál es el símbolo químico del Potasio?' 'K' 'Po' 'Pt' 'Pk').
	preguntas at: 20 put: #('¿Qué elemento es un metal de transición?' 'Hierro' 'Azufre' 'Cloro' 'Fósforo').
	preguntas at: 21 put: #('¿Qué elemento se usa en termómetros?' 'Mercurio' 'Plomo' 'Sodio' 'Hierro').
	preguntas at: 22 put: #('¿Cuál es el elemento más reactivo del grupo de los halógenos?' 'Flúor' 'Cloro' 'Bromo' 'Yodo').
	preguntas at: 23 put: #('¿Qué elemento es fundamental en la formación de diamantes?' 'Carbono' 'Silicio' 'Boro' 'Níquel').
	preguntas at: 24 put: #('¿Cuál es el símbolo químico del Calcio?' 'Ca' 'Cl' 'Cc' 'Cx').
	preguntas at: 25 put: #('¿Qué elemento se usa en la fabricación de bombillas incandescentes?' 'Argón' 'Helio' 'Neón' 'Kriptón').
	preguntas at: 26 put: #('¿Qué elemento es esencial para la vida y se encuentra en todos los compuestos orgánicos?' 'Carbono' 'Oxígeno' 'Hidrógeno' 'Nitrógeno').
	preguntas at: 27 put: #('¿Cuál es el elemento más abundante en el cuerpo humano después del oxígeno?' 'Carbono' 'Hidrógeno' 'Nitrógeno' 'Calcio').
	preguntas at: 28 put: #('¿Qué elemento se usa en la producción de energía nuclear?' 'Uranio' 'Plutonio' 'Radio' 'Helio').
	preguntas at: 29 put: #('¿Cuál es el símbolo químico del Hierro?' 'Fe' 'Hi' 'Hr' 'He').
	preguntas at: 30 put: #('¿Qué elemento es un metal alcalino terroso?' 'Magnesio' 'Potasio' 'Sodio' 'Calcio').
	preguntas at: 31 put: #('¿Cuál es el elemento más raro de la tabla periódica?' 'Francio' 'Astato' 'Polonio' 'Neptunio').
	preguntas at: 32 put: #('¿Qué elemento se usa en la producción de vidrio?' 'Silicio' 'Boro' 'Carbono' 'Fósforo').
	preguntas at: 33 put: #('¿Cuál es el símbolo químico de la Plata?' 'Ag' 'Pt' 'Pl' 'Pr').
	preguntas at: 34 put: #('¿Qué elemento es un gas noble que se usa en láseres?' 'Xenón' 'Helio' 'Argón' 'Kriptón').
	preguntas at: 35 put: #('¿Cuál es el elemento más blando de la tabla periódica?' 'Sodio' 'Potasio' 'Litio' 'Francio').
	preguntas at: 36 put: #('¿Qué elemento es fundamental en la producción de fertilizantes?' 'Nitrógeno' 'Fósforo' 'Potasio' 'Azufre').
	preguntas at: 37 put: #('¿Cuál es el elemento más conductor de electricidad?' 'Plata' 'Cobre' 'Oro' 'Aluminio').
	preguntas at: 38 put: #('¿Qué elemento se usa en la producción de baterías de litio?' 'Litio' 'Sodio' 'Potasio' 'Magnesio').
	preguntas at: 39 put: #('¿Cuál es el símbolo químico del Azufre?' 'S' 'Az' 'Af' 'Su').
	preguntas at: 40 put: #('¿Qué elemento es un metal de transición usado en aleaciones?' 'Níquel' 'Sodio' 'Calcio' 'Fósforo').

]

{ #category : #initialization }
Tematicas >> initializeEnfermedades [
    preguntas at: 361 put: #('¿Cuál es la causa principal de la diabetes tipo 1?' 'Deficiencia en la producción de insulina [CORRECTA]' 'Resistencia a la insulina [INCORRECTA]' 'Desnutrición [INCORRECTA]' 'Infección viral [INCORRECTA]').
    preguntas at: 362 put: #('¿Qué virus es responsable del SIDA?' 'Virus de la Hepatitis B [INCORRECTA]' 'VIH [CORRECTA]' 'Virus del Ébola [INCORRECTA]' 'Virus del Zika [INCORRECTA]').
    preguntas at: 363 put: #('¿Qué enfermedad está causada por la deficiencia de vitamina C?' 'Raquitismo [INCORRECTA]' 'Escorbuto [CORRECTA]' 'Anemia perniciosa [INCORRECTA]' 'Beriberi [INCORRECTA]').
    preguntas at: 364 put: #('¿Cuál de las siguientes es una enfermedad autoinmune?' 'Asma [INCORRECTA]' 'Lupus [CORRECTA]' 'Gripe [INCORRECTA]' 'Malaria [INCORRECTA]').
    preguntas at: 365 put: #('¿Qué enfermedad es conocida como "la enfermedad del beso"?' 'Gripe [INCORRECTA]' 'Mononucleosis [CORRECTA]' 'Sarampión [INCORRECTA]' 'Hepatitis [INCORRECTA]').
    preguntas at: 366 put: #('¿Qué bacteria causa la tuberculosis?' 'Streptococcus pneumoniae [INCORRECTA]' 'Mycobacterium tuberculosis [CORRECTA]' 'Escherichia coli [INCORRECTA]' 'Staphylococcus aureus [INCORRECTA]').
    preguntas at: 367 put: #('¿Qué enfermedad es causada por la infección del virus de la influenza?' 'Gripe [CORRECTA]' 'Tuberculosis [INCORRECTA]' 'Sarampión [INCORRECTA]' 'Hepatitis C [INCORRECTA]').
    preguntas at: 368 put: #('¿Cómo se transmite la malaria?' 'Por contacto con superficies infectadas [INCORRECTA]' 'A través de la picadura de mosquitos [CORRECTA]' 'A través del aire [INCORRECTA]' 'Por alimentos contaminados [INCORRECTA]').
    preguntas at: 369 put: #('¿Cuál es la principal causa de la enfermedad pulmonar obstructiva crónica (EPOC)?' 'Tabaquismo [CORRECTA]' 'Infecciones bacterianas [INCORRECTA]' 'Contaminación del aire [INCORRECTA]' 'Factores genéticos [INCORRECTA]').
    preguntas at: 370 put: #('¿Qué enfermedad provoca la fiebre amarilla?' 'Virus [CORRECTA]' 'Bacteria [INCORRECTA]' 'Parásito [INCORRECTA]' 'Hongo [INCORRECTA]').
    preguntas at: 371 put: #('¿Cuál es la causa de la enfermedad de Alzheimer?' 'Infección bacteriana [INCORRECTA]' 'Destrucción progresiva de las células cerebrales [CORRECTA]' 'Deficiencia de vitamina D [INCORRECTA]' 'Toxinas ambientales [INCORRECTA]').
    preguntas at: 372 put: #('¿Cuál de estas enfermedades es transmitida por garrapatas?' 'Malaria [INCORRECTA]' 'Fiebre tifoidea [INCORRECTA]' 'Enfermedad de Lyme [CORRECTA]' 'Hepatitis B [INCORRECTA]').
    preguntas at: 373 put: #('¿Qué enfermedad es caracterizada por la pérdida de masa ósea?' 'Osteoporosis [CORRECTA]' 'Artritis [INCORRECTA]' 'Esclerosis múltiple [INCORRECTA]' 'Artritis reumatoide [INCORRECTA]').
    preguntas at: 374 put: #('¿Cuál es el agente causante del cáncer de cuello uterino?' 'Virus del papiloma humano (VPH) [CORRECTA]' 'Bacteria Helicobacter pylori [INCORRECTA]' 'Virus de la hepatitis B [INCORRECTA]' 'Fumar [INCORRECTA]').
    preguntas at: 375 put: #('¿Cuál de las siguientes enfermedades es un tipo de cáncer?' 'Leucemia [CORRECTA]' 'Artritis [INCORRECTA]' 'Diabetes [INCORRECTA]' 'Gripe [INCORRECTA]').
    preguntas at: 376 put: #('¿Qué enfermedad causa la inflamación de las articulaciones y puede provocar dolor y rigidez?' 'Osteoporosis [INCORRECTA]' 'Artritis reumatoide [CORRECTA]' 'Esclerosis lateral amiotrófica [INCORRECTA]' 'Lupus [INCORRECTA]').
    preguntas at: 377 put: #('¿Qué enfermedad provoca la acumulación de líquido en los pulmones y dificultad para respirar?' 'Asma [INCORRECTA]' 'Neumonía [CORRECTA]' 'Tuberculosis [INCORRECTA]' 'Bronquitis crónica [INCORRECTA]').
    preguntas at: 378 put: #('¿Cuál es la causa principal de la cirrosis hepática?' 'Consumo excesivo de alcohol [CORRECTA]' 'Infección por el virus de la hepatitis C [INCORRECTA]' 'Consumo excesivo de grasas [INCORRECTA]' 'Diabetes [INCORRECTA]').
    preguntas at: 379 put: #('¿Qué enfermedad es conocida por la pérdida de memoria y otras funciones cognitivas?' 'Esquizofrenia [INCORRECTA]' 'Enfermedad de Alzheimer [CORRECTA]' 'Trastorno obsesivo-compulsivo [INCORRECTA]' 'Depresión [INCORRECTA]').
    preguntas at: 380 put: #('¿Qué enfermedad es causada por una deficiencia de hierro en el cuerpo?' 'Anemia [CORRECTA]' 'Hipotiroidismo [INCORRECTA]' 'Artritis [INCORRECTA]' 'Osteoporosis [INCORRECTA]').
    preguntas at: 381 put: #('¿Qué enfermedad es transmitida por los alimentos contaminados con la bacteria Salmonella?' 'Gripe [INCORRECTA]' 'Salmonelosis [CORRECTA]' 'Cólera [INCORRECTA]' 'Fiebre tifoidea [INCORRECTA]').
    preguntas at: 382 put: #('¿Qué enfermedad es causada por la bacteria Helicobacter pylori?' 'Cáncer de estómago [CORRECTA]' 'Apendicitis [INCORRECTA]' 'Gastritis [INCORRECTA]' 'Reflujo gastroesofágico [INCORRECTA]').
    preguntas at: 383 put: #('¿Cuál es el principal factor de riesgo para desarrollar cáncer de pulmón?' 'Tabaquismo [CORRECTA]' 'Exposición al sol [INCORRECTA]' 'Alimentación poco saludable [INCORRECTA]' 'Sedentarismo [INCORRECTA]').
    preguntas at: 384 put: #('¿Qué enfermedad afecta principalmente a la piel y es causada por una infección por hongos?' 'Psoriasis [INCORRECTA]' 'Cándida [CORRECTA]' 'Dermatitis atópica [INCORRECTA]' 'Acné [INCORRECTA]').
    preguntas at: 385 put: #('¿Qué virus causa la varicela?' 'Virus del herpes [CORRECTA]' 'Virus de la rabia [INCORRECTA]' 'Virus del papiloma humano [INCORRECTA]' 'Virus de la fiebre amarilla [INCORRECTA]').
    preguntas at: 386 put: #('¿Qué enfermedad es caracterizada por la inflamación de las vías respiratorias en los pulmones?' 'Neumonía [INCORRECTA]' 'Bronquitis [CORRECTA]' 'Asma [INCORRECTA]' 'Tuberculosis [INCORRECTA]').
    preguntas at: 387 put: #('¿Qué enfermedad es una infección viral común que afecta al sistema nervioso central y causa parálisis?' 'Sarampión [INCORRECTA]' 'Poliomielitis [CORRECTA]' 'Hepatitis [INCORRECTA]' 'Fiebre tifoidea [INCORRECTA]').
    preguntas at: 388 put: #('¿Qué enfermedad es transmitida por los mosquitos y puede causar fiebre alta, dolor muscular y erupción cutánea?' 'Dengue [CORRECTA]' 'Zika [INCORRECTA]' 'Malaria [INCORRECTA]' 'Chikungunya [INCORRECTA]').
    preguntas at: 389 put: #('¿Qué enfermedad crónica afecta el corazón y los vasos sanguíneos?' 'Hipertensión [CORRECTA]' 'Diabetes [INCORRECTA]' 'Epilepsia [INCORRECTA]' 'Asma [INCORRECTA]').
    preguntas at: 390 put: #('¿Qué enfermedad está relacionada con el aumento de los niveles de azúcar en sangre?' 'Hipoglucemia [INCORRECTA]' 'Diabetes [CORRECTA]' 'Hipotiroidismo [INCORRECTA]' 'Hipertensión [INCORRECTA]').
    preguntas at: 391 put: #('¿Qué enfermedad afecta a la piel y está relacionada con la exposición excesiva al sol?' 'Melanoma [CORRECTA]' 'Psoriasis [INCORRECTA]' 'Eczema [INCORRECTA]' 'Rosácea [INCORRECTA]').
    preguntas at: 392 put: #('¿Qué enfermedad es causada por la infección con el bacilo de Koch?' 'Tuberculosis [CORRECTA]' 'Neumonía [INCORRECTA]' 'Hepatitis [INCORRECTA]' 'Bronquitis [INCORRECTA]').
    preguntas at: 393 put: #('¿Qué enfermedad es conocida por la obstrucción de las vías respiratorias debido a la inflamación crónica?' 'EPOC [CORRECTA]' 'Asma [INCORRECTA]' 'Gripe [INCORRECTA]' 'Fibrosis quística [INCORRECTA]').
    preguntas at: 394 put: #('¿Qué enfermedad es un tipo de trastorno mental que afecta el estado de ánimo y provoca sentimientos persistentes de tristeza?' 'Trastorno obsesivo-compulsivo [INCORRECTA]' 'Depresión [CORRECTA]' 'Ansiedad [INCORRECTA]' 'Esquizofrenia [INCORRECTA]').
    preguntas at: 395 put: #('¿Qué enfermedad es causada por el contacto directo con el sudor de una persona infectada?' 'Fiebre hemorrágica [INCORRECTA]' 'Ébola [CORRECTA]' 'Sarampión [INCORRECTA]' 'Gripe aviar [INCORRECTA]').
    preguntas at: 396 put: #('¿Qué enfermedad es una afección crónica que se caracteriza por la dificultad para controlar los movimientos del cuerpo?' 'Parkinson [CORRECTA]' 'Esclerosis múltiple [INCORRECTA]' 'Alzheimer [INCORRECTA]' 'Esquizofrenia [INCORRECTA]').
    preguntas at: 397 put: #('¿Qué enfermedad es causada por la infección con el virus del herpes simple tipo 1?' 'Herpes labial [CORRECTA]' 'Varicela [INCORRECTA]' 'Hepatitis C [INCORRECTA]' 'Sarampión [INCORRECTA]').
    preguntas at: 398 put: #('¿Cuál es la principal causa de la enfermedad renal crónica?' 'Diabetes [CORRECTA]' 'Hipertensión [INCORRECTA]' 'Obesidad [INCORRECTA]' 'Consumo excesivo de alcohol [INCORRECTA]').
    preguntas at: 399 put: #('¿Qué enfermedad afecta a las glándulas salivales y puede causar hinchazón en la zona de la mandíbula?' 'Paperas [CORRECTA]' 'Parotiditis [INCORRECTA]' 'Faringitis [INCORRECTA]' 'Amigdalitis [INCORRECTA]').
    preguntas at: 400 put: #('¿Qué enfermedad viral afecta las vías respiratorias superiores y provoca fiebre, tos y congestión nasal?' 'Gripe [CORRECTA]' 'Resfriado común [INCORRECTA]' 'Neumonía [INCORRECTA]' 'Faringitis [INCORRECTA]').

]

{ #category : #initialization }
Tematicas >> initializeInnovacionesTecnologicas [
    preguntas at: 201 put: #('¿Quién es conocido como el "padre de la computación"?' 'Alan Turing' 'Steve Jobs' 'Charles Babbage' 'Bill Gates').
    preguntas at: 202 put: #('¿Qué dispositivo revolucionó la comunicación móvil en 2007?' 'iPhone' 'Motorola Razr' 'Nokia 3310' 'Blackberry').
    preguntas at: 203 put: #('¿Qué tecnología permitió la creación de la red global de Internet?' 'HTML' 'Bluetooth' 'Wi-Fi' 'Ethernet').
    preguntas at: 204 put: #('¿Cuál fue la primera inteligencia artificial que ganó en un programa de televisión estadounidense?' 'Watson' 'Siri' 'HAL 9000' 'Alexa').
    preguntas at: 205 put: #('¿Qué avance tecnológico ha permitido la creación de vehículos autónomos?' 'GPS' 'Blockchain' 'Realidad Aumentada' 'Impresión 3D').
    preguntas at: 206 put: #('¿Quién desarrolló la primera computadora electrónica de propósito general?' 'John von Neumann' 'Bill Gates' 'Charles Babbage' 'Alan Turing').
    preguntas at: 207 put: #('¿En qué año se lanzó el primer satélite artificial, Sputnik 1?' '1957' '1960' '1945' '1969').
    preguntas at: 208 put: #('¿Qué innovación tecnológica hizo posible el desarrollo de las impresoras 3D?' 'Plástico' 'Láser' 'Papel' 'Radio').
    preguntas at: 209 put: #('¿Qué nombre recibe la red que permite la conexión de dispositivos de forma inalámbrica a corta distancia?' 'Bluetooth' 'Wi-Fi' '5G' 'Ethernet').
    preguntas at: 210 put: #('¿Cuál de los siguientes fue uno de los primeros avances en computación cuántica?' 'IBM Q' 'Windows XP' 'Mac OS' 'Quantum Computing Ltd').
    preguntas at: 211 put: #('¿Qué tecnología fue la base para la creación de los teléfonos móviles modernos?' 'Tecnología GSM' '3G' '4G' 'Tecnología Li-Fi').
    preguntas at: 212 put: #('¿Quién desarrolló la World Wide Web?' 'Tim Berners-Lee' 'Larry Page' 'Steve Jobs' 'Mark Zuckerberg').
    preguntas at: 213 put: #('¿Qué tecnología utiliza las ondas de radio para transmitir datos a través de Internet?' 'Wi-Fi' 'Bluetooth' 'NFC' 'Zigbee').
    preguntas at: 214 put: #('¿Cuál es la tecnología que permite realizar pagos electrónicos de forma inalámbrica?' 'NFC' 'Blockchain' '4G' 'USB-C').
    preguntas at: 215 put: #('¿Qué compañía lanzó el primer teléfono móvil?' 'Motorola' 'Nokia' 'Apple' 'Samsung').
    preguntas at: 216 put: #('¿Qué tecnología está en el centro de la creación de criptomonedas?' 'Blockchain' 'Big Data' 'Inteligencia Artificial' 'Computación cuántica').
    preguntas at: 217 put: #('¿Qué avance tecnológico permitió la creación de los vehículos eléctricos de consumo masivo?' 'Baterías de litio' 'Celdas solares' 'Motor de combustión' 'Energía eólica').
    preguntas at: 218 put: #('¿Quién es considerado el creador de la inteligencia artificial moderna?' 'Alan Turing' 'Elon Musk' 'Jeff Bezos' 'Ray Kurzweil').
    preguntas at: 219 put: #('¿Qué término describe la tecnología que simula entornos físicos para interactuar con ellos de manera digital?' 'Realidad Virtual' 'Realidad Aumentada' 'Videojuegos' 'Holografía').
    preguntas at: 220 put: #('¿Qué empresa desarrolló el sistema operativo Android?' 'Google' 'Microsoft' 'Apple' 'IBM').
    preguntas at: 221 put: #('¿En qué año fue lanzado el primer iPhone?' '2007' '2006' '2005' '2008').
    preguntas at: 222 put: #('¿Cuál es la tecnología que permite la creación de imágenes tridimensionales por medio de ondas sonoras?' 'Ultrasonido' 'LIDAR' 'Holografía' 'Radiactividad').
    preguntas at: 223 put: #('¿Qué tecnología hizo posible los avances en las computadoras portátiles modernas?' 'Discos duros SSD' 'Pantallas OLED' 'Memoria RAM' 'USB').
    preguntas at: 224 put: #('¿Qué se considera uno de los avances más importantes en el campo de la robótica en la última década?' 'Robots autónomos' 'Aviones no tripulados' 'Vehículos eléctricos' 'Drones para entrega de paquetes').
    preguntas at: 225 put: #('¿Cuál es la tecnología utilizada para realizar videollamadas en aplicaciones como Zoom y Skype?' 'VoIP' '5G' 'Bluetooth' 'NFC').
    preguntas at: 226 put: #('¿Qué empresa desarrolló el sistema operativo Windows?' 'Microsoft' 'Apple' 'IBM' 'Google').
    preguntas at: 227 put: #('¿Cuál es el principal componente utilizado para la fabricación de circuitos integrados en las computadoras?' 'Silicio' 'Cobre' 'Aluminio' 'Oro').
    preguntas at: 228 put: #('¿Qué tecnología permite la creación de pagos móviles a través de smartphones?' 'NFC' '5G' '4G' 'RFID').
    preguntas at: 229 put: #('¿Qué innovación tecnológica se asocia con la creación de la criptomoneda Bitcoin?' 'Blockchain' 'Computación cuántica' 'Big Data' 'Inteligencia Artificial').
    preguntas at: 230 put: #('¿En qué año se lanzó el primer satélite comercial de comunicaciones?' '1962' '1960' '1959' '1970').
    preguntas at: 231 put: #('¿Cuál es el principal objetivo de la tecnología de impresión 3D?' 'Crear prototipos rápidos' 'Imprimir libros' 'Imprimir ropa' 'Crear videojuegos').
    preguntas at: 232 put: #('¿Qué es un "smartphone"?' 'Un teléfono inteligente que incluye capacidades avanzadas' 'Un teléfono que solo hace llamadas' 'Un teléfono con cámara' 'Un teléfono solo para mensajes de texto').
    preguntas at: 233 put: #('¿Cuál fue el propósito de la creación de la red DARPA, precursor de la Internet moderna?' 'Facilitar la comunicación en tiempos de guerra' 'Establecer una red social' 'Desarrollar aplicaciones de entretenimiento' 'Crear una plataforma educativa').
    preguntas at: 234 put: #('¿Qué tecnología permite la creación de las "smart cities" o ciudades inteligentes?' 'IoT (Internet de las Cosas)' '5G' 'Nanotecnología' 'Energía solar').
    preguntas at: 235 put: #('¿En qué campo se utiliza la tecnología de realidad aumentada?' 'Medicina' 'Cocina' 'Música' 'Fotografía').
    preguntas at: 236 put: #('¿Qué dispositivo se utiliza para medir las huellas dactilares en los sistemas de seguridad?' 'Lector de huellas' 'Lector de retina' 'Cámaras de vigilancia' 'Sensores de movimiento').
    preguntas at: 237 put: #('¿Qué es un "bot" en el contexto tecnológico?' 'Un programa automatizado' 'Un tipo de robot' 'Un tipo de teléfono inteligente' 'Un sistema operativo').
    preguntas at: 238 put: #('¿Qué es la nanotecnología?' 'Tecnología que utiliza materiales a escala microscópica para crear nuevos productos' 'Tecnología que se utiliza para crear redes de comunicación' 'Tecnología utilizada en la biología molecular' 'Tecnología para la creación de pantallas flexibles').
    preguntas at: 239 put: #('¿Qué avance tecnológico permite la creación de coches que se pueden controlar a través de aplicaciones móviles?' 'Conducción autónoma' 'Bluetooth' '4G' 'Control remoto').
    preguntas at: 240 put: #('¿Qué es el "cloud computing"?' 'Almacenamiento en línea de datos' 'Conexión a Internet' 'Uso de energía solar' 'Una red de comunicaciones inalámbricas').

]

{ #category : #initialization }
Tematicas >> initializeMitosYLeyendas [.
    preguntas at: 161 put: #('¿En la mitología griega, quién es el dios del trueno?' 'Zeus' 'Apolo' 'Ares' 'Hermes').
    preguntas at: 162 put: #('¿Qué criatura mitológica es conocida por su habilidad para transformar a las personas en piedra al mirarlas?' 'Medusa' 'Sirena' 'Minotauro' 'Fénix').
    preguntas at: 163 put: #('¿En qué mitología aparece el dragón Fafnir?' 'Nórdica' 'China' 'Egipcia' 'Celta').
    preguntas at: 164 put: #('¿Qué héroe griego fue conocido por sus 12 trabajos?' 'Hércules' 'Ulises' 'Perseo' 'Aquiles').
    preguntas at: 165 put: #('¿Quién era el dios del inframundo en la mitología romana?' 'Plutón' 'Júpiter' 'Marte' 'Neptuno').
    preguntas at: 166 put: #('¿Cuál es el nombre del unicornio mitológico en las leyendas medievales?' 'Unicornio Blanco' 'Pegaso' 'Rocinante' 'Kirin').
    preguntas at: 167 put: #('¿Qué ser mitológico tiene cuerpo de león y cabeza de hombre en la cultura egipcia?' 'Esfinge' 'Minotauro' 'Quimera' 'Hidra').
    preguntas at: 168 put: #('¿En la mitología nórdica, qué animal devorará a Odín durante el fin del mundo (Ragnarök)?' 'Lobos' 'Dragones' 'Serpientes' 'Jinetes').
    preguntas at: 169 put: #('En la mitología celta, ¿qué criatura es conocida por su habilidad de curar enfermedades?' 'Druid' 'Banshee' 'Hada' 'Goblin').
    preguntas at: 170 put: #('¿Qué monstruo mitológico griego vive en un laberinto y devoraba a los intrusos?' 'Minotauro' 'Cíclope' 'Sirena' 'Quimera').
    preguntas at: 171 put: #('¿En la mitología romana, quién era el dios de la guerra?' 'Marte' 'Apolo' 'Júpiter' 'Neptuno').
    preguntas at: 172 put: #('¿Cómo se llama el monstruo marino en la mitología escandinava que desafía a los vikingos?' 'Kraken' 'Leviatán' 'Moby Dick' 'Jörmungandr').
    preguntas at: 173 put: #('¿Qué diosa griega es conocida como la diosa de la sabiduría y la estrategia?' 'Atenea' 'Afrodita' 'Artemisa' 'Hera').
    preguntas at: 174 put: #('En la mitología egipcia, ¿quién es el dios del sol?' 'Ra' 'Osiris' 'Anubis' 'Horus').
    preguntas at: 175 put: #('En la mitología nórdica, ¿quién es el gigante que personifica el caos y el mal?' 'Loki' 'Thor' 'Freyja' 'Balder').
    preguntas at: 176 put: #('¿Qué criatura mitológica griega era mitad hombre, mitad caballo?' 'Centauro' 'Sátiro' 'Cíclope' 'Minotauro').
    preguntas at: 177 put: #('¿Qué héroe mitológico griego luchó contra Troya y murió por una flecha en el talón?' 'Aquiles' 'Ulises' 'Perseo' 'Hércules').
    preguntas at: 178 put: #('En la mitología japonesa, ¿quién es el dios del sol?' 'Amaterasu' 'Susanoo' 'Tsukuyomi' 'Raijin').
    preguntas at: 179 put: #('En la mitología hindú, ¿quién es el dios creador del universo?' 'Brahma' 'Shiva' 'Vishnu' 'Ganesha').
    preguntas at: 180 put: #('¿Cuál es el nombre de la diosa griega del amor y la belleza?' 'Afrodita' 'Atenea' 'Artemisa' 'Deméter').
    preguntas at: 181 put: #('¿Qué leyenda escocesa describe a un monstruo que habita en el lago Ness?' 'El monstruo del lago Ness' 'El Kraken' 'El Yeti' 'El Chupacabras').
    preguntas at: 182 put: #('¿Cuál es el nombre del héroe mexicano conocido por su lucha contra la opresión y que ha sido convertido en leyenda popular?' 'Emiliano Zapata' 'El Cid' 'Pancho Villa' 'José de San Martín').
    preguntas at: 183 put: #('En la leyenda del "Chupacabras", ¿qué criatura se dice que ataca a los animales domésticos?' 'Un extraño monstruo chupasangre' 'Un dragón' 'Un vampiro' 'Una bestia peluda').
    preguntas at: 184 put: #('¿En qué país se origina la leyenda del "Hombre Lobo"?' 'Alemania' 'Francia' 'Italia' 'Inglaterra').
    preguntas at: 185 put: #('¿Qué leyenda peruana habla de un espíritu de una mujer que se aparece a los viajeros en las montañas?' 'La Dama de Blanco' 'La Llorona' 'La Ciguapa' 'El Sombrerón').
    preguntas at: 186 put: #('¿Qué leyenda española cuenta la historia de una joven que se ahoga en un río por no poder casarse con su amor?' 'La Llorona' 'El Cid' 'La Santa Compaña' 'El Conde Drácula').
    preguntas at: 187 put: #('En la leyenda de "Robin Hood", ¿quién es el sheriff que persigue a Robin Hood?' 'El Sheriff de Nottingham' 'El Príncipe Juan' 'Sir Guy' 'Sir William').
    preguntas at: 188 put: #('En la leyenda irlandesa de "El Leprechaun", ¿qué criatura es conocida por guardar un caldero lleno de oro?' 'Un duende' 'Un elfo' 'Un ogro' 'Un hada').
    preguntas at: 189 put: #('Según la leyenda japonesa, ¿qué es el "Kappa"?' 'Una criatura que vive en el agua y arrastra a las personas' 'Un espíritu malvado que asusta a los viajeros' 'Un tipo de demonio nocturno' 'Un dios de la agricultura').
    preguntas at: 190 put: #('En la leyenda de "El Cuervo" de Edgar Allan Poe, ¿qué palabra repite constantemente el cuervo?' 'Nunca más' 'Muerte' 'Esperanza' 'Olvidar').
    preguntas at: 191 put: #('¿En la leyenda de la Atlántida, qué se dice que causó su hundimiento?' 'Un terremoto' 'Un diluvio' 'Un volcán' 'Un ataque de monstruos marinos').
    preguntas at: 192 put: #('¿Qué figura mitológica representa el destino y se asocia con hilar el hilo de la vida?' 'Las Moiras' 'Los Titanes' 'Los Cíclopes' 'Los Dioses Olímpicos').
    preguntas at: 193 put: #('¿Cuál es el nombre del famoso monstruo que habita en las montañas de los Himalayas, según la leyenda tibetana?' 'Yeti' 'Bigfoot' 'Chupacabras' 'El Mokele-Mbembe').
    preguntas at: 194 put: #('Según la leyenda de "El Hombre del Saco", ¿quién secuestra a los niños desobedientes?' 'Un hombre con saco' 'Un ogro' 'Un fantasma' 'Un lobo feroz').
    preguntas at: 195 put: #('En la leyenda de "La Llorona", ¿qué le ocurrió a la mujer que llora por sus hijos?' 'Los ahogó en un río' 'Se los robaron' 'Fueron llevados por un extraño' 'Fueron malditos por un espíritu').
    preguntas at: 196 put: #('¿Qué criatura mitológica azteca es conocida como el "serpiente emplumada"?' 'Quetzalcóatl' 'Huitzilopochtli' 'Tezcatlipoca' 'Tláloc').
    preguntas at: 197 put: #('En la leyenda de "Drácula", ¿quién es el personaje principal que lucha contra el vampiro?' 'Van Helsing' 'Frankenstein' 'Dorian Gray' 'El Fantasma de la Ópera').
    preguntas at: 198 put: #('En la leyenda de "El Jinete Sin Cabeza", ¿quién es la figura que persigue a su víctima?' 'Un jinete decapitado' 'Un soldado fantasma' 'Un demonio' 'Un lobo feroz').
    preguntas at: 199 put: #('¿Qué monstruo marino aparece en la leyenda nórdica como un gigante de agua que ataca barcos?' 'El Kraken' 'El Leviatán' 'El Moby Dick' 'El Yeti').
    preguntas at: 200 put: #('En la leyenda de "La Casa Encantada", ¿qué se dice que ocurre en los lugares donde habita un espíritu?' 'Se escuchan ruidos extraños' 'La casa se incendia' 'Aparecen fantasmas' 'Desaparecen objetos').

]

{ #category : #initialization }
Tematicas >> initializePremiosNobel [
    preguntas at: 281 put: #('¿En qué año se otorgó el primer Premio Nobel?' '1901' '1895' '1910' '1885').
    preguntas at: 282 put: #('¿Qué científico ganó el Premio Nobel de Física en 1903 junto con su esposo Pierre Curie?' 'Marie Curie' 'Albert Einstein' 'Max Planck' 'Niels Bohr').
    preguntas at: 283 put: #('¿Qué autor de "Don Quijote de la Mancha" ganó el Premio Nobel de Literatura en 1905?' 'Miguel de Cervantes' 'Gabriel García Márquez' 'Mario Vargas Llosa' 'Pablo Neruda').
    preguntas at: 284 put: #('¿Qué organización ganó el Premio Nobel de la Paz en 2001?' 'Naciones Unidas' 'Médicos Sin Fronteras' 'Greenpeace' 'Cruz Roja').
    preguntas at: 285 put: #('¿Quién fue el primer laureado con el Premio Nobel de Medicina?' 'Paul Ehrlich' 'Albert Einstein' 'Alexander Fleming' 'Marie Curie').
    preguntas at: 286 put: #('¿En qué categoría se otorgó el primer Premio Nobel en 1901?' 'Paz' 'Literatura' 'Medicina' 'Física').
    preguntas at: 287 put: #('¿Qué físico es conocido por su contribución a la teoría de la relatividad y ganó el Premio Nobel en 1921?' 'Albert Einstein' 'Niels Bohr' 'Max Planck' 'Werner Heisenberg').
    preguntas at: 288 put: #('¿Quién fue galardonado con el Premio Nobel de Literatura en 1962 por su obra "La vieja y el mar"?' 'Ernest Hemingway' 'William Faulkner' 'F. Scott Fitzgerald' 'John Steinbeck').
    preguntas at: 289 put: #('¿Qué escritor japonés recibió el Premio Nobel de Literatura en 1968?' 'Yukio Mishima' 'Haruki Murakami' 'Kenzaburo Oe' 'Yasunari Kawabata').
    preguntas at: 290 put: #('¿Quién ganó el Premio Nobel de la Paz en 1993 por sus esfuerzos de paz en Sudáfrica?' 'Nelson Mandela' 'Desmond Tutu' 'Kofi Annan' 'Aung San Suu Kyi').
    preguntas at: 291 put: #('¿Qué organización fue galardonada con el Premio Nobel de la Paz en 1963?' 'Cruz Roja Internacional' 'ONU' 'Médicos Sin Fronteras' 'Greenpeace').
    preguntas at: 292 put: #('¿Qué mujer fue la primera en ganar dos Premios Nobel, uno en Física y otro en Química?' 'Marie Curie' 'Dorothy Crowfoot Hodgkin' 'Lise Meitner' 'Rosalind Franklin').
    preguntas at: 293 put: #('¿Qué premio Nobel se otorgó a Bob Dylan en 2016?' 'Nobel de Literatura' 'Nobel de la Paz' 'Nobel de Física' 'Nobel de Medicina').
    preguntas at: 294 put: #('¿En qué año fue galardonado Martin Luther King Jr. con el Premio Nobel de la Paz?' '1964' '1962' '1963' '1965').
    preguntas at: 295 put: #('¿Qué premio Nobel fue otorgado a Albert Einstein en 1921?' 'Física' 'Medicina' 'Literatura' 'Paz').
    preguntas at: 296 put: #('¿Qué filósofo y escritor recibió el Premio Nobel de Literatura en 1957?' 'Albert Camus' 'Jean-Paul Sartre' 'Simone de Beauvoir' 'Gabriel García Márquez').
    preguntas at: 297 put: #('¿Quién ganó el Premio Nobel de Literatura en 1998, siendo uno de los escritores más conocidos de la India?' 'V.S. Naipaul' 'Arundhati Roy' 'Salman Rushdie' 'R.K. Narayan').
    preguntas at: 298 put: #('¿Qué organización fue premiada con el Nobel de la Paz en 2007?' 'Al Gore y el IPCC' 'Amnistía Internacional' 'Greenpeace' 'La ONU').
    preguntas at: 299 put: #('¿Qué autor estadounidense recibió el Premio Nobel de Literatura en 1930?' 'Sinclair Lewis' 'Ernest Hemingway' 'William Faulkner' 'John Steinbeck').
    preguntas at: 300 put: #('¿Qué economista estadounidense ganó el Premio Nobel de Economía en 1976 por sus teorías sobre el dinero y el empleo?' 'Milton Friedman' 'John Maynard Keynes' 'Robert Solow' 'Amartya Sen').
    preguntas at: 301 put: #('¿Qué científico ganó el Premio Nobel de Medicina en 1945 por el descubrimiento de la penicilina?' 'Alexander Fleming' 'Albert Einstein' 'Louis Pasteur' 'Paul Ehrlich').
    preguntas at: 302 put: #('¿Qué organización ganó el Premio Nobel de la Paz en 1962 en reconocimiento a su trabajo humanitario?' 'Albert Schweitzer' 'Martin Luther King Jr.' 'Madre Teresa' 'Aung San Suu Kyi').
    preguntas at: 303 put: #('¿Quién fue el primer estadounidense en recibir el Premio Nobel de Literatura?' 'William Faulkner' 'Ernest Hemingway' 'John Steinbeck' 'T.S. Eliot').
    preguntas at: 304 put: #('¿Qué Nobel fue otorgado a la organización Human Rights Watch en 2015?' 'Nobel de la Paz' 'Nobel de la Literatura' 'Nobel de Medicina' 'Nobel de la Economía').
    preguntas at: 305 put: #('¿Quién ganó el Premio Nobel de la Paz en 1994, compartido con Yasser Arafat?' 'Shimon Peres' 'Bill Clinton' 'Nelson Mandela' 'Mikhail Gorbachev').
    preguntas at: 306 put: #('¿Quién fue galardonado con el Premio Nobel de la Paz en 1992 por su lucha en favor de los derechos humanos en Myanmar?' 'Aung San Suu Kyi' 'Malala Yousafzai' 'Kofi Annan' 'Liu Xiaobo').
    preguntas at: 307 put: #('¿Qué científico recibió el Premio Nobel de Química en 1951 por el estudio de los enlaces químicos?' 'Linus Pauling' 'Marie Curie' 'James Clerk Maxwell' 'Albert Einstein').
    preguntas at: 308 put: #('¿Qué Premio Nobel fue otorgado a la ONU en 2001 por sus esfuerzos de paz y seguridad internacional?' 'Nobel de la Paz' 'Nobel de Medicina' 'Nobel de Economía' 'Nobel de Literatura').
    preguntas at: 309 put: #('¿Qué escritor sueco recibió el Premio Nobel de Literatura en 1903?' 'August Strindberg' 'Selma Lagerlöf' 'Naguib Mahfouz' 'Rabindranath Tagore').
    preguntas at: 310 put: #('¿Qué economista recibió el Premio Nobel de Economía en 1999 por sus contribuciones a la teoría de la desigualdad?' 'Amartya Sen' 'Milton Friedman' 'Robert Solow' 'Joseph Stiglitz').
    preguntas at: 311 put: #('¿Qué científico alemán fue galardonado con el Premio Nobel de Química en 2004 por su trabajo sobre la química de las moléculas complejas?' 'Fritz Haber' 'Jean-Marie Gustave Le Clézio' 'Albert Einstein' 'Linus Pauling').
    preguntas at: 312 put: #('¿Qué país tiene más premios Nobel de la Paz en total?' 'Estados Unidos' 'Reino Unido' 'Francia' 'Alemania').
    preguntas at: 313 put: #('¿Qué escritor fue el primer latinoamericano en recibir el Premio Nobel de Literatura?' 'Mario Vargas Llosa' 'Pablo Neruda' 'Gabriel García Márquez' 'Octavio Paz').
    preguntas at: 314 put: #('¿Qué filósofo alemán fue galardonado con el Premio Nobel de Economía en 2002?' 'Friedrich Hayek' 'Karl Marx' 'Adam Smith' 'Max Weber').
    preguntas at: 315 put: #('¿Qué premio Nobel fue otorgado en 1979 a la Madre Teresa de Calcuta?' 'Nobel de la Paz' 'Nobel de Literatura' 'Nobel de Medicina' 'Nobel de Física').
    preguntas at: 316 put: #('¿Qué científico recibió el Premio Nobel de Química en 1972 por su descubrimiento de la estructura del ADN?' 'James Watson' 'Albert Einstein' 'Linus Pauling' 'Thomas Edison').
    preguntas at: 317 put: #('¿Quién recibió el Premio Nobel de Medicina en 1975 por sus investigaciones sobre el cáncer?' 'Renato Dulbecco' 'Peter Duesberg' 'Alexander Fleming' 'Barbara McClintock').
    preguntas at: 318 put: #('¿En qué categoría fue otorgado el Premio Nobel a William Golding en 1983?' 'Literatura' 'Física' 'Química' 'Economía').
    preguntas at: 319 put: #('¿Qué científico fue galardonado con el Premio Nobel de la Paz en 1985 por su trabajo en favor del desarme nuclear?' 'Mikhail Gorbachev' 'Albert Einstein' 'John F. Kennedy' 'Jimmy Carter').
 	preguntas at: 320 put: #('¿Qué químico fue premiado en 2014 por su desarrollo de la química de las nanopartículas?' 'Isamu Akasaki' 'Jean-Marie Gustave Le Clézio' 'Alan J. Heeger' 'Linus Pauling').

]

{ #category : #initialization }
Tematicas >> initializePremiosOscar [
    preguntas at: 121 put: #('¿Qué película ganó el Óscar a Mejor Película en 1994?' 'Forrest Gump' 'Pulp Fiction' 'The Shawshank Redemption' 'Quiz Show').
    preguntas at: 122 put: #('¿Qué película fue la primera en ganar el Óscar a Mejor Película?' 'Alas' 'El cantante de jazz' 'Sin novedad en el frente' 'El nacimiento de una nación').
    preguntas at: 123 put: #('¿Qué película animada ganó el Óscar a Mejor Película Animada en 2001?' 'Shrek' 'Monsters Inc.' 'El viaje de Chihiro' 'Toy Story 2').
    preguntas at: 124 put: #('¿Cuál es la única secuela que ha ganado el Óscar a Mejor Película?' 'The Godfather Part II' 'The Lord of the Rings: The Two Towers' 'Toy Story 3' 'Star Wars: The Empire Strikes Back').
    preguntas at: 125 put: #('¿Qué película musical ganó el Óscar a Mejor Película en 1965?' 'The Sound of Music' 'My Fair Lady' 'West Side Story' 'Oliver!').
    preguntas at: 126 put: #('¿Qué película ganó el Óscar a Mejor Película en 2019?' 'Parasite' 'Joker' '1917' 'Once Upon a Time in Hollywood').
    preguntas at: 127 put: #('¿Qué director ha ganado más premios Óscar en la categoría de Mejor Película?' 'John Ford' 'Steven Spielberg' 'Frank Capra' 'James Cameron').
    preguntas at: 128 put: #('¿Qué película de ciencia ficción ganó el Óscar a Mejor Película en 2009?' 'The Hurt Locker' 'Avatar' 'District 9' 'Inception').
    preguntas at: 129 put: #('¿Qué película es la que más premios Óscar ha ganado, empatada con Ben-Hur y Titanic?' 'The Lord of the Rings: The Return of the King' 'Gladiator' 'Slumdog Millionaire' 'Chicago').
    preguntas at: 130 put: #('¿Qué película protagonizada por Anthony Hopkins ganó el Óscar a Mejor Película en 1991?' 'The Silence of the Lambs' 'Hannibal' 'The Remains of the Day' 'Amistad').
    preguntas at: 131 put: #('¿Qué película ganó el Óscar a Mejor Película en 1943 durante la Segunda Guerra Mundial?' 'Casablanca' 'Gone with the Wind' 'Mrs. Miniver' 'Yankee Doodle Dandy').
    preguntas at: 132 put: #('¿Qué película protagonizada por Tom Hanks ganó el Óscar a Mejor Película en 1995?' 'Forrest Gump' 'Apollo 13' 'Saving Private Ryan' 'Philadelphia').
    preguntas at: 133 put: #('¿Qué película sobre la mafia ganó el Óscar a Mejor Película en 1972?' 'The Godfather' 'Goodfellas' 'Scarface' 'The Untouchables').
    preguntas at: 134 put: #('¿Qué película ambientada en un manicomio ganó el Óscar a Mejor Película en 1975?' 'One Flew Over the Cuckoo''s Nest' 'A Beautiful Mind' 'Girl, Interrupted' 'Shutter Island').
    preguntas at: 135 put: #('¿Qué película basada en un musical ganó el Óscar a Mejor Película en 2002?' 'Chicago' 'Moulin Rouge!' 'Dreamgirls' 'Les Misérables').
    preguntas at: 136 put: #('¿Qué película histórica ganó el Óscar a Mejor Película en 2012?' 'Argo' 'Lincoln' 'The King''s Speech' '12 Years a Slave').
    preguntas at: 137 put: #('¿Qué película protagonizada por Russell Crowe ganó el Óscar a Mejor Película en 2000?' 'Gladiator' 'A Beautiful Mind' 'Master and Commander' 'The Insider').
    preguntas at: 138 put: #('¿Qué película de fantasía ganó el Óscar a Mejor Película en 2003?' 'The Lord of the Rings: The Return of the King' 'Harry Potter and the Sorcerer''s Stone' 'The Chronicles of Narnia' 'Pan''s Labyrinth').
    preguntas at: 139 put: #('¿Qué película ganó el Óscar a Mejor Película en 1957, dirigida por David Lean?' 'The Bridge on the River Kwai' 'Lawrence of Arabia' 'Doctor Zhivago' 'A Passage to India').
    preguntas at: 140 put: #('¿Qué película protagonizada por Emma Stone y Ryan Gosling ganó el Óscar a Mejor Película en 2017?' 'Moonlight' 'La La Land' 'The Artist' 'Whiplash').
    preguntas at: 141 put: #('¿En qué año se celebró la primera ceremonia de los Premios Óscar?' '1929' '1930' '1927' '1931').
    preguntas at: 142 put: #('¿Cuál es la estatuilla que se entrega en los Premios Óscar conocida comúnmente como?' 'Óscar' 'Emmy' 'Grammy' 'Tony').
    preguntas at: 143 put: #('¿Qué actor ha ganado más premios Óscar en la categoría de Mejor Actor?' 'Daniel Day-Lewis' 'Marlon Brando' 'Jack Nicholson' 'Tom Hanks').
    preguntas at: 144 put: #('¿Qué actriz tiene más premios Óscar en la categoría de Mejor Actriz?' 'Katharine Hepburn' 'Meryl Streep' 'Ingrid Bergman' 'Elizabeth Taylor').
    preguntas at: 145 put: #('¿Qué película tiene el récord de más nominaciones al Óscar con 14?' 'Las tres mencionadas' 'Titanic' 'La La Land' 'All About Eve').
    preguntas at: 146 put: #('¿Qué película fue la primera animada en ser nominada a Mejor Película?' 'Beauty and the Beast' 'Toy Story' 'The Lion King' 'Shrek').
    preguntas at: 147 put: #('¿Qué compositor ha ganado más premios Óscar por música?' 'Alfred Newman' 'John Williams' 'Ennio Morricone' 'Hans Zimmer').
    preguntas at: 148 put: #('¿Qué película ha ganado más premios Óscar en la historia (11 premios)?' 'Todas las anteriores' 'Titanic' 'Ben-Hur' 'The Lord of the Rings: The Return of the King').
    preguntas at: 149 put: #('¿Quién fue la persona más joven en ganar un premio Óscar?' 'Tatum O''Neal' 'Shirley Temple' 'Anna Paquin' 'Abigail Breslin').
    preguntas at: 150 put: #('¿Cuál es el premio honorífico otorgado a cineastas por contribuciones destacadas al cine?' 'Irving G. Thalberg Memorial Award' 'Cecil B. DeMille Award' 'Jean Hersholt Humanitarian Award' 'Governors Award').
    preguntas at: 151 put: #('¿Quién fue la primera mujer en ganar el Óscar a Mejor Dirección?' 'Kathryn Bigelow' 'Sofia Coppola' 'Jane Campion' 'Greta Gerwig').
    preguntas at: 152 put: #('¿Qué actor rechazó un Óscar por su actuación en "The Godfather"?' 'Marlon Brando' 'Al Pacino' 'Robert Duvall' 'James Caan').
    preguntas at: 153 put: #('¿Cuál fue la primera película extranjera en ganar el Óscar a Mejor Película?' 'Parasite' 'Roma' 'Crouching Tiger, Hidden Dragon' 'Amour').
    preguntas at: 154 put: #('¿Qué presentador de los Premios Óscar es conocido por haber conducido la ceremonia 19 veces?' 'Bob Hope' 'Billy Crystal' 'Whoopi Goldberg' 'Johnny Carson').
    preguntas at: 155 put: #('¿Qué categoría fue eliminada en los primeros Premios Óscar y luego restaurada en 2001?' 'Mejor Animación' 'Mejor Película Extranjera' 'Mejor Dirección de Arte' 'Mejor Documental').
    preguntas at: 156 put: #('¿Qué actor ganó un Óscar póstumo por su actuación en "The Dark Knight"?' 'Heath Ledger' 'Philip Seymour Hoffman' 'Chadwick Boseman' 'Robin Williams').
    preguntas at: 157 put: #('¿En qué teatro se celebra actualmente la ceremonia de los Premios Óscar?' 'Dolby Theatre' 'Kodak Theatre' 'Chinese Theatre' 'El Capitan Theatre').
    preguntas at: 158 put: #('¿Qué director ha ganado más premios Óscar por Mejor Dirección?' 'John Ford' 'Steven Spielberg' 'Martin Scorsese' 'Frank Capra').
    preguntas at: 159 put: #('¿Qué película fue descalificada de los Premios Óscar porque su banda sonora no era original?' 'The Godfather' 'A Clockwork Orange' '2001: A Space Odyssey').
	preguntas at: 160 put: #('¿Qué premio especial se otorgó a Walt Disney en 1939 por "Blancanieves y los siete enanitos"?' 'Un Óscar y siete mini estatuillas' 'Premio Honorífico' 'Irving G. Thalberg Award' 'Governors Award').
]

{ #category : #initialization }
Tematicas >> initializeRecordsOlimpicos [
    preguntas at: 321 put: #('¿Quién tiene el récord olímpico de más medallas de oro en unos Juegos Olímpicos?' 'Usain Bolt [INCORRECTA]' 'Michael Phelps [CORRECTA]' 'Larisa Latynina [INCORRECTA]' 'Simone Biles [INCORRECTA]').
    preguntas at: 322 put: #('¿Cuál es el récord olímpico de los 100 metros planos en hombres?' '9.63 segundos [INCORRECTA]' '9.58 segundos [CORRECTA]' '9.72 segundos [INCORRECTA]' '9.85 segundos [INCORRECTA]').
    preguntas at: 323 put: #('¿Qué atleta tiene el récord olímpico de más medallas en una sola edición de los Juegos Olímpicos?' 'Mark Spitz [INCORRECTA]' 'Michael Phelps [CORRECTA]' 'Usain Bolt [INCORRECTA]' 'Paavo Nurmi [INCORRECTA]').
    preguntas at: 324 put: #('¿Quién ostenta el récord olímpico de salto de altura en mujeres?' 'Stefka Kostadinova [CORRECTA]' 'Yelena Isinbayeva [INCORRECTA]' 'Heike Drechsler [INCORRECTA]' 'Nafissatou Thiam [INCORRECTA]').
    preguntas at: 325 put: #('¿Cuál es el récord olímpico en los 100 metros estilo libre en natación, hombres?' '47.95 segundos [INCORRECTA]' '47.52 segundos [INCORRECTA]' '47.02 segundos [CORRECTA]' '46.87 segundos [INCORRECTA]').
    preguntas at: 326 put: #('¿Qué país ostenta el récord olímpico de más medallas de oro en la historia?' 'Estados Unidos [CORRECTA]' 'Rusia [INCORRECTA]' 'China [INCORRECTA]' 'Alemania [INCORRECTA]').
    preguntas at: 327 put: #('¿Cuál es el récord olímpico de los 200 metros estilo libre en natación, mujeres?' '1:54.06 [CORRECTA]' '1:54.73 [INCORRECTA]' '1:55.27 [INCORRECTA]' '1:52.63 [INCORRECTA]').
    preguntas at: 328 put: #('¿Quién tiene el récord olímpico en los 400 metros con vallas, hombres?' 'Kevin Young [CORRECTA]' 'Edwin Moses [INCORRECTA]' 'Sergio Rojas [INCORRECTA]' 'Michael Johnson [INCORRECTA]').
    preguntas at: 329 put: #('¿En qué evento olímpico se logró el récord de más medallas en una sola edición por una mujer?' 'Atletismo [INCORRECTA]' 'Natación [CORRECTA]' 'Gimnasia [INCORRECTA]' 'Remo [INCORRECTA]').
    preguntas at: 330 put: #('¿Qué atleta tiene el récord olímpico de más victorias en los 100 metros en los Juegos Olímpicos?' 'Carl Lewis [INCORRECTA]' 'Usain Bolt [CORRECTA]' 'Jesse Owens [INCORRECTA]' 'Michael Johnson [INCORRECTA]').
    preguntas at: 331 put: #('¿Qué nadador tiene el récord olímpico de más medallas en natación?' 'Ian Thorpe [INCORRECTA]' 'Michael Phelps [CORRECTA]' 'Mark Spitz [INCORRECTA]' 'Caeleb Dressel [INCORRECTA]').
    preguntas at: 332 put: #('¿Quién tiene el récord olímpico de más medallas en los Juegos Olímpicos de invierno?' 'Ole Einar Bjørndalen [CORRECTA]' 'Marit Bjørgen [INCORRECTA]' 'Sven Kramer [INCORRECTA]' 'Nino Salukvadze [INCORRECTA]').
    preguntas at: 333 put: #('¿Qué atleta posee el récord olímpico de más medallas de oro en gimnasia?' 'Nadia Comăneci [INCORRECTA]' 'Simone Biles [CORRECTA]' 'Larisa Latynina [INCORRECTA]' 'Svetlana Khorkina [INCORRECTA]').
    preguntas at: 334 put: #('¿Qué país ostenta el récord olímpico de más medallas ganadas en los Juegos Olímpicos de verano?' 'Estados Unidos [CORRECTA]' 'Rusia [INCORRECTA]' 'Alemania [INCORRECTA]' 'China [INCORRECTA]').
    preguntas at: 335 put: #('¿Cuál es el récord olímpico en los 100 metros con vallas, mujeres?' '12.31 segundos [CORRECTA]' '12.60 segundos [INCORRECTA]' '12.76 segundos [INCORRECTA]' '12.45 segundos [INCORRECTA]').
    preguntas at: 336 put: #('¿Qué equipo tiene el récord de más medallas olímpicas en baloncesto?' 'Estados Unidos [CORRECTA]' 'Yugoslavia [INCORRECTA]' 'Rusia [INCORRECTA]' 'Brasil [INCORRECTA]').
    preguntas at: 337 put: #('¿Quién tiene el récord olímpico en lanzamiento de peso, hombres?' 'Adam Nelson [INCORRECTA]' 'John Godina [INCORRECTA]' 'Víctor Martínez [INCORRECTA]' 'Usain Bolt [INCORRECTA]').
    preguntas at: 338 put: #('¿Qué atleta tiene el récord olímpico de más medallas en los Juegos Olímpicos de verano?' 'Michael Phelps [CORRECTA]' 'Paavo Nurmi [INCORRECTA]' 'Larisa Latynina [INCORRECTA]' 'Carl Lewis [INCORRECTA]').
    preguntas at: 339 put: #('¿Quién ostenta el récord olímpico en los 5000 metros, hombres?' 'Kenenisa Bekele [CORRECTA]' 'Haile Gebrselassie [INCORRECTA]' 'Eliud Kipchoge [INCORRECTA]' 'Mo Farah [INCORRECTA]').
    preguntas at: 340 put: #('¿Qué atleta ostenta el récord olímpico en los 100 metros estilo libre, mujeres?' 'Federica Pellegrini [CORRECTA]' 'Katie Ledecky [INCORRECTA]' 'Simone Manuel [INCORRECTA]' 'Sarah Sjöström [INCORRECTA]').
    preguntas at: 341 put: #('¿Qué país tiene el récord olímpico de más medallas de oro en los Juegos Olímpicos de invierno?' 'Estados Unidos [INCORRECTA]' 'Noruega [CORRECTA]' 'Rusia [INCORRECTA]' 'Alemania [INCORRECTA]').
    preguntas at: 342 put: #('¿Qué atleta tiene el récord olímpico de más medallas en los 1500 metros en atletismo?' 'Mo Farah [INCORRECTA]' 'Hicham El Guerrouj [CORRECTA]' 'Kenenisa Bekele [INCORRECTA]' 'David Rudisha [INCORRECTA]').
    preguntas at: 343 put: #('¿Qué atleta tiene el récord olímpico de más medallas en ciclismo de pista?' 'Bradley Wiggins [INCORRECTA]' 'Chris Hoy [CORRECTA]' 'Mark Cavendish [INCORRECTA]' 'Patrick Bevin [INCORRECTA]').
    preguntas at: 344 put: #('¿Quién tiene el récord olímpico en lanzamiento de jabalina, hombres?' 'Jan Zelezny [CORRECTA]' 'Sergey Bubka [INCORRECTA]' 'Tuariki Tangohia [INCORRECTA]' 'Matthias de Zordo [INCORRECTA]').
    preguntas at: 345 put: #('¿Qué atleta tiene el récord olímpico de más medallas en el atletismo?' 'Carl Lewis [CORRECTA]' 'Usain Bolt [INCORRECTA]' 'Jesse Owens [INCORRECTA]' 'Michael Johnson [INCORRECTA]').
    preguntas at: 346 put: #('¿Cuál es el récord olímpico en los 10,000 metros en atletismo, mujeres?' '29:54.66 [CORRECTA]' '29:31.02 [INCORRECTA]' '29:25.12 [INCORRECTA]' '29:45.32 [INCORRECTA]').
    preguntas at: 347 put: #('¿Quién tiene el récord olímpico de más victorias en natación?' 'Michael Phelps [CORRECTA]' 'Mark Spitz [INCORRECTA]' 'Caeleb Dressel [INCORRECTA]' 'Ian Thorpe [INCORRECTA]').
    preguntas at: 348 put: #('¿Quién tiene el récord olímpico de más medallas en el remo?' 'Sir Steve Redgrave [CORRECTA]' 'Michael Phelps [INCORRECTA]' 'Thorsten Ringer [INCORRECTA]' 'Kayla Harrison [INCORRECTA]').
    preguntas at: 349 put: #('¿Qué atleta tiene el récord olímpico en los 200 metros estilo mariposa, hombres?' 'Michael Phelps [CORRECTA]' 'Ian Thorpe [INCORRECTA]' 'Caeleb Dressel [INCORRECTA]' 'Mark Spitz [INCORRECTA]').
    preguntas at: 350 put: #('¿Qué nadadora tiene el récord olímpico en los 100 metros estilo libre, mujeres?' 'Cate Campbell [INCORRECTA]' 'Sarah Sjöström [CORRECTA]' 'Katie Ledecky [INCORRECTA]' 'Federica Pellegrini [INCORRECTA]').
    preguntas at: 351 put: #('¿Qué atleta tiene el récord olímpico de más medallas en los 400 metros en atletismo?' 'Michael Johnson [CORRECTA]' 'Wayde van Niekerk [INCORRECTA]' 'Alberto Juantorena [INCORRECTA]' 'Lashinda Demus [INCORRECTA]').
    preguntas at: 352 put: #('¿Quién tiene el récord olímpico en los 100 metros estilo mariposa, mujeres?' 'Sarah Sjöström [CORRECTA]' 'Kathleen Baker [INCORRECTA]' 'Natalie Coughlin [INCORRECTA]' 'Dara Torres [INCORRECTA]').
    preguntas at: 353 put: #('¿Quién tiene el récord olímpico en los 1500 metros estilo libre, mujeres?' 'Katie Ledecky [CORRECTA]' 'Federica Pellegrini [INCORRECTA]' 'Missy Franklin [INCORRECTA]' 'Camille Muffat [INCORRECTA]').
    preguntas at: 354 put: #('¿Cuál es el récord olímpico en el salto triple, hombres?' '18.29 metros [INCORRECTA]' '17.79 metros [CORRECTA]' '17.10 metros [INCORRECTA]' '18.12 metros [INCORRECTA]').
    preguntas at: 355 put: #('¿Qué país tiene el récord olímpico de más medallas de plata?' 'Estados Unidos [CORRECTA]' 'Rusia [INCORRECTA]' 'Alemania [INCORRECTA]' 'Francia [INCORRECTA]').
    preguntas at: 356 put: #('¿Quién tiene el récord olímpico de más medallas en el fútbol?' 'Lionel Messi [INCORRECTA]' 'Michael Phelps [INCORRECTA]' 'Birgit Prinz [CORRECTA]' 'Marta [INCORRECTA]').
    preguntas at: 357 put: #('¿Cuál es el récord olímpico en el lanzamiento de disco, hombres?' '69.99 metros [CORRECTA]' '67.51 metros [INCORRECTA]' '68.88 metros [INCORRECTA]' '71.10 metros [INCORRECTA]').
    preguntas at: 358 put: #('¿Qué atleta tiene el récord olímpico en los 400 metros con vallas, mujeres?' 'Sally Pearson [CORRECTA]' 'Nia Ali [INCORRECTA]' 'Dalilah Muhammad [INCORRECTA]' 'Karsten Warholm [INCORRECTA]').
    preguntas at: 359 put: #('¿Quién ostenta el récord olímpico en el salto de altura, hombres?' 'Javier Sotomayor [CORRECTA]' 'Sergey Bubka [INCORRECTA]' 'Tuariki Tangohia [INCORRECTA]' 'Peter O''Neill [INCORRECTA]').
    preguntas at: 360 put: #('¿Qué país tiene el récord olímpico en más medallas de bronce?' 'Estados Unidos [CORRECTA]' 'China [INCORRECTA]' 'Rusia [INCORRECTA]' 'Alemania [INCORRECTA]').

]

sonic:-	writeln('Hola, Soy Sonic y estoy aqui para ayudarte,
	Dime, que quieres saber?'),
	readln(Input),
	eliza(Input),!.
	
	eliza(Input):- Input == ['bye'],
	writeln('Nos vemos, espero haberte ayudado'), !.
	eliza(Input):- Input == ['bye', '.'],
	writeln('Nos vemos, espero haberte ayudado'), !.
	eliza(Input):- Input == ['Adios'],
	writeln('Nos vemos, espero haberte ayudado.'), !.
	eliza(Input):- Input == ['Adios', '.'],
	writeln('Nos vemos, espero haberte ayudado.'), !.
	eliza(Input):- Input == ['adios'],
	writeln('Nos vemos, espero haberte ayudado.'), !.
	eliza(Input):- Input == ['adios', '.'],
	writeln('Nos vemos, espero haberte ayudado.'), !.


	eliza(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	eliza(Input1), !.



template([alumno, _], ['Leonardo Martinez Gomez'],[]).

%Gestional - Preguntas simples señálando informacion

template([que, es, la, diabetes, gestacional, _], ['La diabetes gestacional es una forma de diabetes que se desarrolla durante el embarazo. Afecta el control del azúcar en la sangre y generalmente desaparece después del parto. Sin embargo, las mujeres que han tenido diabetes gestacional tienen un mayor riesgo de desarrollar diabetes tipo 2 más adelante en la vida.'],[]).
template([diabetes, gestacional, _], ['La diabetes gestacional es una forma de diabetes que se desarrolla durante el embarazo. Afecta el control del azúcar en la sangre y generalmente desaparece después del parto. Sin embargo, las mujeres que han tenido diabetes gestacional tienen un mayor riesgo de desarrollar diabetes tipo 2 más adelante en la vida.'],[]).
template([diabetes, gestacional], ['La diabetes gestacional es una forma de diabetes que se desarrolla durante el embarazo. Afecta el control del azúcar en la sangre y generalmente desaparece después del parto. Sin embargo, las mujeres que han tenido diabetes gestacional tienen un mayor riesgo de desarrollar diabetes tipo 2 más adelante en la vida.'],[]).
template([sabes, que, es, la, diabetes, gestacional, _], ['La diabetes gestacional es una forma de diabetes que se desarrolla durante el embarazo. Afecta el control del azúcar en la sangre y generalmente desaparece después del parto. Sin embargo, las mujeres que han tenido diabetes gestacional tienen un mayor riesgo de desarrollar diabetes tipo 2 más adelante en la vida.'],[]).
template([cuáles, son, los, factores, de, riesgo, de, la, diabetes, gestacional, _], ['Algunos factores de riesgo para desarrollar diabetes gestacional incluyen tener antecedentes familiares de diabetes, sobrepeso u obesidad antes del embarazo, tener más de 25 años, haber tenido diabetes gestacional en embarazos anteriores, tener un historial de bebés grandes o complicaciones durante el embarazo anterior, y pertenecer a ciertos grupos étnicos, como hispanos, afroamericanos o asiáticos. Sin embargo, cada caso es único y es importante recibir un diagnóstico y seguimiento adecuados por parte de un profesional de la salud.'], []).
template([cuáles, son, los, síntomas, de, la, diabetes, gestacional, _], ['La diabetes gestacional generalmente no presenta síntomas obvios. Sin embargo, algunas mujeres pueden experimentar sed excesiva, micción frecuente, aumento del apetito, fatiga o visión borrosa. Es importante destacar que estos síntomas también pueden ser comunes durante el embarazo normal, por lo que es esencial realizar pruebas de detección para confirmar el diagnóstico de diabetes gestacional.'], []).
template([cómo, se, detecta, la, diabetes, gestacional, _], ['La diabetes gestacional se detecta mediante pruebas de detección de glucosa en sangre. La prueba más comúnmente utilizada es la prueba de tolerancia oral a la glucosa. En esta prueba, se le pedirá a la mujer embarazada que beba una solución de glucosa y se medirá el nivel de azúcar en la sangre después de cierto tiempo. Si los resultados de la prueba indican niveles de azúcar elevados, se realizarán pruebas adicionales para confirmar el diagnóstico de diabetes gestacional.'], []).
template([cómo, se, trata, la, diabetes, gestacional, _], ['El tratamiento de la diabetes gestacional generalmente incluye cambios en la alimentación y actividad física. Las mujeres pueden necesitar ajustar su dieta para controlar los niveles de azúcar en la sangre y realizar actividad física regularmente. En algunos casos, puede ser necesario administrar insulina para controlar los niveles de azúcar en la sangre. Además, es importante monitorear regularmente los niveles de azúcar en la sangre y realizar visitas de seguimiento con el médico. Cada caso es único, por lo que es esencial trabajar en estrecha colaboración con un equipo médico para recibir el tratamiento adecuado.'], []).
template([cuáles, son, los, posibles, riesgos, de, la, diabetes, gestacional, _], ['La diabetes gestacional puede aumentar el riesgo de complicaciones tanto para la madre como para el bebé. Algunos posibles riesgos incluyen un mayor riesgo de presión arterial alta y preeclampsia, un mayor riesgo de dar a luz a un bebé grande (macrosomía), mayor riesgo de requerir una cesárea, mayor riesgo de hipoglucemia en el recién nacido y un mayor riesgo de desarrollar diabetes tipo 2 en el futuro. Es importante recibir un tratamiento adecuado y realizar un seguimiento regular con el médico para reducir estos riesgos.'], []).
	
	
	%Sintomas - gestacional
		template([si, tengo, dolor, de , s(_), es, sintoma, de, diabetes, gestacional, _], [flagSintomas], [4]).
		template([si, tengo, s(_), es, sintoma, de, diabetes, gestacional, _], [flagSintomas], [2]).
		template([si, tengo, vision, s(_), es, sintoma, de, diabetes, gestacional, _], [flagSintomas], [3]).
		template([si, tengo, una, s(_), es, sintoma, de, diabetes, gestacional, _], [flagSintomas], [3]).
		template([si, tengo, s(_), es, sintoma, de, diabetes, gestacional, _], [flagSintomas], [3]).

	%Soluciones - gestacional
		template([que, debo, de, tomar, si, tengo, dolor, de, s(_), _], [flagSoluciones], [8]).
		template([tengo, dolor, de, s(_)], [flagSoluciones], [3]).
		template([tengo, una, s(_)], [flagSoluciones], [3]).
		template([tengo, s(_)], [flagSoluciones], [1]).



%Lepra

template([que, es, la, lepra, _], ['La lepra, también conocida como enfermedad de Hansen, es una enfermedad infecciosa crónica causada por la bacteria Mycobacterium leprae. Afecta principalmente la piel, los nervios periféricos, la mucosa de las vías respiratorias superiores y los ojos.'], []).
template([lepra], ['La lepra, también conocida como enfermedad de Hansen, es una enfermedad infecciosa crónica causada por la bacteria Mycobacterium leprae. Afecta principalmente la piel, los nervios periféricos, la mucosa de las vías respiratorias superiores y los ojos.'], []).
template([lepra, que, es, _], ['La lepra, también conocida como enfermedad de Hansen, es una enfermedad infecciosa crónica causada por la bacteria Mycobacterium leprae. Afecta principalmente la piel, los nervios periféricos, la mucosa de las vías respiratorias superiores y los ojos.'], []).
template([sabes, que, es, la, lepra, _], ['La lepra, también conocida como enfermedad de Hansen, es una enfermedad infecciosa crónica causada por la bacteria Mycobacterium leprae. Afecta principalmente la piel, los nervios periféricos, la mucosa de las vías respiratorias superiores y los ojos.'], []).

	%Sintomas - lepra
		template([si, tengo, dolor, de , s(_), es, sintoma, de, lepra, _], [flagSintomas1], [4]).
		template([si, tengo, s(_), es, sintoma, de , lepra, _], [flagSintomas1], [2]).
		template([si, tengo, s(_), borrosa,es, sintoma, de , lepra, _], [flagSintomas1], [2]).
		template([si, tengo, una, s(_), es, sintoma, de , lepra, _], [flagSintomas11], [3]).
		template([si, tengo, s(_), es, sintoma, de , lepra, _], [flagSintomas1], [3]).
		template([tengo, dolor, s(_)], [flagSintomas1], [2]).
		template([la, sensacion, de, s(_), es, sintoma, de, lepra, _], [flagSintomas1], [3]).
		template([tengo, s(_)], [flagSintomas1], [1]).
		template([tengo, lesiones, s(_)], [flagSintomas1], [2]).
		template([tengo, s(_), en, la, piel], [flagSintomas1], [1]).
		template([perdida, de, s(_), es, sintoma, de, lepra, _], [flagSintomas1], [2]).
		template([la, perdida, de, la, s(_), es, sintoma, de, la, lepra, _ ], [flagSintomas1], [4]).
		template([las, s(_), en, la, piel, son, sintomas, de, lepra, _], [flagSintomas1], [1]).
		template([los, s(_), en, la, piel, son, sintomas, de, lepra, _], [flagSintomas1], [1]).
		template([el, dolor, s(_), es, sintoma, de, lepra, _], [flagSintomas1], [2]).
		template([dolor, s(_)], [flagSintomas1], [1]).
		template([la, s(_), en, la, piel, es, sintoma, de, lepra, _], [flagSintomas1], [1]).
		template([tengo, dolor, s(_)], [flagSintomas1], [2]).
		template([el, s(_), es, sintoma, de, lepra, _], [flagSintomas1], [1]).


	%Soluciones - lepra
		template([que, debo, de, tomar, si, tengo, dolor, de, s(_), _], [flagSoluciones], [8]).
		template([tengo, dolor, de, s(_)], [flagSoluciones], [3]).
		template([tengo, una, s(_)], [flagSoluciones], [3]).
		template([tengo, dolor, s(_)], [flagSoluciones], [2]).
		template([alguna, solucion, para, el, dolor, de, s(_)], [flagSoluciones], [6]).
		template([alguna, solucion, para, la, s(_)], [flagSoluciones], [4]).
		template([alguna, solucion, para, s(_)], [flagSoluciones], [3]).
		
		


%Ojo Seco

template([que, es, el, ojo, seco, _], ['El ojo seco es una condición en la cual los ojos no producen suficiente cantidad de lágrimas o las lágrimas se evaporan rápidamente. Esto puede causar molestias como sequedad, irritación, enrojecimiento y visión borrosa.'], []).
template([ojo, seco], ['El ojo seco es una condición en la cual los ojos no producen suficiente cantidad de lágrimas o las lágrimas se evaporan rápidamente. Esto puede causar molestias como sequedad, irritación, enrojecimiento y visión borrosa.'], []).
template([sabes, que, es, el, ojo, seco, _], ['El ojo seco es una condición en la cual los ojos no producen suficiente cantidad de lágrimas o las lágrimas se evaporan rápidamente. Esto puede causar molestias como sequedad, irritación, enrojecimiento y visión borrosa.'], []).
template([cuales, son, los, sintomas, del, ojo, seco, _], ['Los síntomas del ojo seco pueden incluir sensación de sequedad, picazón, ardor, enrojecimiento, sensibilidad a la luz, visión borrosa y fatiga visual. También pueden aparecer molestias al usar lentes de contacto o al realizar actividades que requieren un esfuerzo visual prolongado.'], []).
template([cómo, se, trata, el, ojo, seco, _], ['El tratamiento del ojo seco puede incluir el uso de lágrimas artificiales para mantener los ojos hidratados, cambios en el estilo de vida como parpadear más frecuentemente o utilizar humidificadores, y medicamentos recetados como gotas para los ojos o pomadas lubricantes. Sin embargo, es importante consultar a un profesional de la salud para obtener un diagnóstico preciso y determinar el mejor tratamiento para cada caso individual.'], []).
template([qué, causa, el, ojo, seco, _], ['El ojo seco puede ser causado por diversos factores, como el envejecimiento, condiciones médicas como la artritis reumatoide o el lupus, el uso prolongado de dispositivos electrónicos, la exposición a ambientes secos o con aire acondicionado, ciertos medicamentos y cambios hormonales. Sin embargo, es importante consultar a un profesional de la salud para obtener un diagnóstico preciso y determinar las causas específicas en cada caso.'], []).
template([cómo, se, puede, prevenir, el, ojo, seco, _], ['Para prevenir el ojo seco, se pueden tomar medidas como parpadear más frecuentemente, especialmente durante actividades prolongadas que requieren un esfuerzo visual intenso, descansar los ojos regularmente al usar dispositivos electrónicos, evitar la exposición prolongada a ambientes secos o con aire acondicionado, utilizar gafas de sol para proteger los ojos de la radiación ultravioleta y mantener una buena hidratación general. Sin embargo, es importante tener en cuenta que la prevención y el tratamiento adecuado pueden variar según la causa subyacente del ojo seco, por lo que es recomendable consultar a un profesional de la salud.'], []).
	
	%Sintomas - Ojo Seco
		template([el, s(_), en, los, ojos, puede, ser, sintoma, de, ojo, seco, _], [flagSintomas2], [1]).
		template([el, s(_), en, los, ojos, es, sintoma, de, ojo, seco, _], [flagSintomas2], [1]).
		template([s(_), en, los, ojos, puede, ser, sintoma, de, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, los, ojos, _], [flagSintomas2], [0]).
		template([s(_), en, los, ojos], [flagSintomas2], [0]).
		template([s(_), en, dos, ojos], [flagSintomas2], [0]).
		template([s(_), en, un, ojo], [flagSintomas2], [0]).
		template([s(_), en, los, dos, ojos], [flagSintomas2], [0]).
		template([s(_), ocular, en, los, ojos], [flagSintomas2], [0]).
		template([s(_), en, los, ojos, _], [flagSintomas2], [0]).
		template([s(_), de, cuerpo, extraño, en, los, ojos, _], [flagSintomas2], [0]).
		template([s(_), de, basura, en, los, ojos], [flagSintomas2], [0]).
		template([s(_), de, basurita, en, los, ojos], [flagSintomas2], [0]).
		template([s(_), incomoda, en, los, ojos], [flagSintomas2], [0]).
		template([la, (_), me, incomoda], [flagSintomas2], [1]).
		template([tengo, (_), por, la, luz], [flagSintomas2], [1]).
		template([(_), en, un, ojo], [flagSintomas2], [0]).
		template([(_), en, ambos, ojos], [flagSintomas2], [0]).
		template([(_), borrosa, en, ambos, ojos], [flagSintomas2], [0]).
		template([s(_), en, los, ojos, puede, indicar, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, los, ojos, es, un, posible, síntoma, de, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, los, ojos, puede, ser, consecuencia, de, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, los, ojos, puede, estar, relacionado, con, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, los, ojos, puede, causar, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, los, ojos, puede, provocar, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, los, ojos, puede, generar, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, los, ojos, puede, manifestarse, como, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, los, ojos, puede, producir, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, los, ojos, puede, dar, lugar, a, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, el, ojo, puede, indicar, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, el, ojo, es, un, posible, síntoma, de, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, el, ojo, puede, ser, consecuencia, de, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, el, ojo, puede, estar, relacionado, con, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, el, ojo, puede, causar, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, el, ojo, puede, provocar, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, el, ojo, puede, generar, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, el, ojo, puede, manifestarse, como, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, el, ojo, puede, producir, ojo, seco, _], [flagSintomas2], [0]).
		template([s(_), en, el, ojo, puede, dar, lugar, a, ojo, seco, _], [flagSintomas2], [0]).
		




% templates sencillos y generales
template([hii, my, name, is, Name, '.'], ['Hii', Name, 'How', are, you, '?'], [4]).

template([cuál, es, tu, nombre, _], ['Mi nombre es Sonic, soy una base de conocimientos con respuestas predefinidas'], []).
template([por, que, te, llamas, sonic, _], ['Debido a que mi creador es fan de un personaje de la marca SEGA llamado Sonic. El personaje Sonic es un erizo azul con unos cucs que corre super rapido xd'], []).
template([qué, haces, _, ahora], ['Soy un modelo de lenguaje desarrollado por OpenAI y estoy aquí para ayudarte con tus preguntas e inquietudes'], []).
template([qué, hace, sonic, ahorita], ['Soy un modelo de lenguaje desarrollado por OpenAI y estoy aquí para ayudarte con tus preguntas e inquietudes'], []).
template([qué, piensas, sobre, _], ['No soy mucho de pensar, ya que no soy una IA y solo trabajo con la informacion que me esten añadiendo :c'], []).
template([de, dónde, eres, _], ['Como tal soy una base de conocimientos, soy un conjunto de bits de 0 y 1 en la computadora de un estudiante :c'], []).
template([qué, puedes, hacer, _], ['Puedo responder algunas preguntas, proporcionar información de enfermedades, las cuales son la Diabetes Gestacional, Lepra y Ojo seco'], []).
template([cómo, funciona, _, esto], ['Funciono procesando el texto de entrada y generando respuestas basadas en el conocimiento y patrones de lenguaje aprendidos durante mi entrenamiento e implementacion de informacion que mi creador me esta añádiendo.'], []).
template([cuál, es, tu, hobby, _], ['Como base de conocimiento, no tengo hobbies en el sentido tradicional, pero espero estar disfrutando ayudando y aprendiendo nuevas cosas'], []).

template([cuál, es, tu, color, favorito, _], ['Como soy una base de conocimientos, no tengo la capacidad de percibir los colores, pero puedo decirte que los colores vibrantes y cálidos suelen ser agradables para muchas personas'], []).
template([quién, te, creó, _], ['Fui desarrollado en parte por el profesor Alcaraz, sin embargo, ya me dio una forma mas definida el alumno Leonardo'], []).
template([qué, tiempo, hace, _, hoy], ['Como tal, aun no tengo conexion a tiempo real con informacion actualizada, sin embargo, el calentamiento global a aumentado la temperatura de todas las regiones del mundo, por lo tanto, puedo decir que hace bastante calor ahora mismo.'], []).



template(_, ['No te entiendo hermano, puedes explicarlo de manera diferente?'], []). 



%Diabetes gestacional
	%Sintomas
		elizaSintomas(X, R) :-
			sintomas(X),
			(
				X = estomago, R = ['Sí, el dolor de estómago es un síntoma común de la diabetes gestacional.'];
				X = sed, R = ['Sí, la sed excesiva puede ser un síntoma de la diabetes gestacional.'];
				X = miccion, R = ['Sí, la micción frecuente puede ser un síntoma de la diabetes gestacional.'];
				X = hambre, R = ['Sí, la falta de hambre puede ser un síntoma de la diabetes gestacional.'];
				X = fatiga, R = ['Sí, la la fatiga puede ser un síntoma de la diabetes gestacional.'];
				X = peso, R = ['Sí, bajar de peso puede ser un síntoma de la diabetes gestacional.'];
				X = borrosa, R = ['Sí, la vision borrosa puede ser un síntoma de la diabetes gestacional.'];
				X = infeccion, R = ['Sí, una infeccion puede ser un síntoma de la diabetes gestacional.'];
				
				R = ['Sí, el dolor de', X, 'puede ser un síntoma de la diabetes gestacional.']
			).

		elizaSintomas(X, R):- \+sintomas(X), R = [al, parecer, el, sintoma, X , no, es, sintoma, de, diabetes, gestacional].

		sintomas(estomago).
		sintomas(sed).
		sintomas(miccion).
		sintomas(hambre).
		sintomas(fatiga).
		sintomas(peso).
		sintomas(borrosa).
		sintomas(infeccion).


	%Soluciones 

		elizaSoluciones(X, R) :-
			soluciones(X),
			(
				X = estomago, R = ['Para el dolor de estomago, debes de tomar un antiacido'];
				X = sed, R = ['Para la sed, debes de tomar electrolitos cuando esta enfermo'];
				X = miccion, R = ['Para reducir la miccion, debes beber más  líquidos por la mañana y por la tarde en vez de por la noche. Evita el alcohol y las bebidas con cafeína, como el café, el té y los refrescos de cola, que aumentan la producción de orina.'];
				X = hambre, R = ['Deberias de comer aunque no tengas hambre, hay medicamentos que insitan el hambre, para ello, es recomendable la visita de un doctor'];
				X = fatiga, R = ['Para la fatiga, debes descansar, evitar cualquier emisión de luz, si es necesario, tomar medicamentos para el dolor de cabeza'];
				X = peso, R = ['La solucion de la baja de peso, es ir al medico y al nutricionista, para crear un plan alimenticio'];
				X = borrosa, R = ['Gotas refrescantes y descando, es el mejor de los casos, si empeora, deberias visitar un oculista'];
				X = infeccion, R = ['Para controlar y tratar las infecciones, debes de tomar analgesicos y tratar la herida lo mas posible, si no cicatriza con el par de dias y tiene un mal olor, se recomienza visitar un doctor para tratar la herida lo mas pronto posible.'];
				
				X = piel, R = ['Mantener una buena higiene de la piel y utilizar cremas hidratantes puede ayudar a mantener la piel en mejores condiciones. Además, es importante evitar el rascado excesivo de la piel para prevenir infecciones. Sin embargo, es fundamental buscar atención médica para recibir un diagnóstico más adecuado y un tratamiento específico para la enfermedad de la lepra. Un médico especialista podrá evaluar tus síntomas y brindarte las recomendaciones necesarias.'];
				X = adormecimiento, R = ['El adormecimiento puede ser un síntoma de la lepra. Si experimentas adormecimiento en alguna parte de tu cuerpo, es importante buscar atención médica para un diagnóstico y tratamiento adecuados. Un médico especialista podrá evaluar tus síntomas y brindarte las recomendaciones necesarias para abordar la enfermedad de la lepra de manera efectiva.'];
				X = articular, R = ['El dolor articular puede ser un síntoma asociado a la lepra. Si experimentas dolor en las articulaciones, es fundamental buscar atención médica lo antes posible para recibir un diagnóstico preciso y un tratamiento adecuado. Un médico especialista podrá evaluar tus síntomas y recomendarte las opciones de tratamiento disponibles específicamente para la enfermedad de la lepra.'];
				X = lesiones, R = ['Las lesiones en la piel pueden ser un síntoma de la lepra. Si notas la presencia de lesiones en tu piel, es importante buscar atención médica para recibir un diagnóstico y tratamiento adecuados. Un médico especialista en enfermedades de la piel podrá examinar las lesiones y recomendarte el tratamiento más apropiado para la enfermedad de la lepra.'];
				X = deformidades, R = ['Las deformidades pueden ser consecuencia de la lepra. Si presentas deformidades en alguna parte de tu cuerpo, es crucial buscar atención médica lo antes posible para recibir un tratamiento adecuado. Un médico especialista en enfermedades neurológicas y ortopédicas podrá evaluar tus síntomas y ofrecerte opciones de tratamiento para prevenir o tratar las deformidades asociadas a la enfermedad de la lepra.'];
				X = sensibilidad, R = ['La sensibilidad alterada en la piel puede ser un síntoma de la lepra. Si experimentas cambios en la sensibilidad de tu piel, es fundamental buscar atención médica para un diagnóstico y tratamiento adecuados. Un médico especialista en enfermedades neurológicas y dermatológicas podrá evaluar tus síntomas y brindarte las recomendaciones necesarias para abordar la enfermedad de la lepra.'];
				X = vision, R = ['Los problemas de visión pueden estar asociados con la lepra. Si experimentas dificultades visuales, es esencial consultar a un oftalmólogo o a un médico especialista en enfermedades de los ojos para un diagnóstico y tratamiento adecuados. El especialista podrá evaluar tus síntomas y brindarte las opciones de tratamiento disponibles específicamente para los problemas de visión relacionados con la enfermedad de la lepra.'];
				X = ulceras, R = ['Las úlceras en la piel pueden ser un síntoma de la lepra. Si notas la presencia de úlceras en tu piel, es importante buscar atención médica para un diagnóstico y tratamiento adecuados. Un médico especialista en enfermedades de la piel podrá examinar las úlceras y recomendarte el tratamiento más apropiado para la enfermedad de la lepra.'];
				X = nodulos, R = ['La aparición de nódulos en la piel puede ser un síntoma de la lepra. Si observas la presencia de nódulos en tu piel, es fundamental buscar atención médica para recibir un diagnóstico y tratamiento adecuados. Un médico especialista en enfermedades de la piel podrá examinar los nódulos y brindarte las recomendaciones necesarias para abordar la enfermedad de la lepra.'];
				X = sequedad, R = ['La sequedad en la piel puede ser un síntoma de la lepra. Para aliviar la sequedad, es recomendable utilizar cremas hidratantes y evitar la exposición excesiva a factores que puedan resecar la piel, como el sol y el viento. Sin embargo, es fundamental buscar atención médica para un diagnóstico más preciso y un tratamiento específico para la enfermedad de la lepra. Un médico especialista podrá evaluar tus síntomas y brindarte las recomendaciones necesarias para abordar la sequedad asociada a esta enfermedad.'];

				X = sequedad, R = ['La sequedad ocular puede ser tratada con lágrimas artificiales o lubricantes oculares que ayuden a mantener los ojos hidratados. También se pueden recomendar cambios en el entorno, como utilizar humidificadores o evitar el uso prolongado de dispositivos electrónicos. Es importante consultar a un médico para evaluar la causa subyacente de la sequedad ocular y determinar el tratamiento más adecuado.'];
				X = enrojecimiento, R = ['El enrojecimiento ocular puede ser tratado evitando la exposición a irritantes como humo, polvo o productos químicos. También se pueden utilizar gotas para los ojos con propiedades calmantes y antiinflamatorias. Es recomendable consultar a un médico para un diagnóstico preciso y recibir el tratamiento adecuado.'];
				X = picazón, R = ['La picazón ocular puede aliviarse utilizando compresas frías, evitando frotar los ojos y utilizando lágrimas artificiales sin conservantes. También se pueden prescribir medicamentos antialérgicos si la picazón es causada por una reacción alérgica. Se recomienda buscar atención médica para un diagnóstico y tratamiento adecuados.'];
				X = ardor, R = ['El ardor ocular puede ser aliviado utilizando lágrimas artificiales sin conservantes y evitando factores desencadenantes como humo o exposición prolongada a pantallas. Si el ardor persiste o empeora, se recomienda consultar a un médico para una evaluación más detallada y tratamiento adecuado.'];
				X = vision, R = ['La visión borrosa puede ser causada por el ojo seco. Es importante utilizar lágrimas artificiales para mantener los ojos hidratados y mejorar la claridad visual. Sin embargo, la visión borrosa también puede ser indicativa de otros problemas oculares, por lo que se recomienda buscar atención médica para un diagnóstico preciso y tratamiento adecuado.'];
				X = sensacion, R = ['La sensación de ardor ocular puede ser aliviada utilizando lágrimas artificiales lubricantes y evitando factores desencadenantes como humo o productos químicos. Si la sensación de ardor persiste o empeora, es importante buscar atención médica para una evaluación adecuada y recibir el tratamiento necesario.'];
				X = lagrimeo, R = ['El lagrimeo excesivo puede ser causado por la sequedad ocular, ya que el cuerpo produce más lágrimas para compensar la falta de humedad en los ojos. Utilizar lágrimas artificiales sin conservantes puede ayudar a mantener los ojos hidratados y reducir el lagrimeo excesivo. Sin embargo, es recomendable consultar a un médico para determinar la causa subyacente del lagrimeo y recibir el tratamiento adecuado.'];
				X = fatiga, R = ['La fatiga ocular causada por la luz intensa puede ser aliviada utilizando gafas de sol con protección UV y evitando la exposición prolongada a pantallas y luces brillantes. Descansar los ojos periódicamente y parpadear con frecuencia también puede ayudar. Si la fatiga ocular persiste o se agrava, se recomienda buscar atención médica para un diagnóstico y manejo adecuados.'];
				X = luz, R = ['La sensibilidad a la luz, también conocida como fotofobia, puede ser tratada utilizando gafas de sol con protección UV y evitando la exposición directa a fuentes de luz intensa. En algunos casos, se pueden recomendar medicamentos oculares para aliviar la sensibilidad. Es importante consultar a un médico para una evaluación adecuada y recibir el tratamiento necesario.'];

				R = ['Puede que tengas un dolor de', X, ' no sabemos con exactitud que sea, pero recomendamos visitar un doctor para su profundo analisis.']
			).

		elizaSoluciones(X, R):- \+soluciones(X), R = ['No tengo conocimiento al sintoma de dolor de ', X ].

		soluciones(estomago).
		soluciones(sed).
		soluciones(miccion).
		soluciones(hambre).
		soluciones(fatiga).
		soluciones(peso).
		soluciones(borrosa).
		soluciones(infeccion).

		soluciones(piel).
		soluciones(adormecimiento).
		soluciones(articular).
		soluciones(lesiones).
		soluciones(deformidades).
		soluciones(sensibilidad).
		soluciones(vision).
		soluciones(ulceras).
		soluciones(nodulos).
		soluciones(articular).
		soluciones(sequedad).

		soluciones(sequedad).
		soluciones(enrojecimiento).
		soluciones(picazón).
		soluciones(ardor).
		soluciones(visión).
		soluciones(sensacion).
		soluciones(lagrimeo).
		soluciones(fatiga).
		soluciones(luz).




%/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 
% Lepra
	% Sintomas

	elizaSintomas1(X, R) :-
			sintomas1(X),
			(
				X = adormecimiento, R = ['El',X, 'puede ser sintoma de Lepra, se sugiere visitar a un doctor para un diagnostico mas certero.'];
				X = lesiones, R = ['Las',X, 'cutaneas puede ser sintoma de Lepra, se sugiere visitar a un doctor para un diagnostico mas certero.'];
				X = deformidades, R = ['Las ',X,' en la piel y articulaciones pueden ser un sintoma de la lepra.'];
				X = sensibilidad, R = ['La perdida de ',X,' puede ser sintoma de lepra, se sugiere visitar a un doctor para un diagnostico mas certero.'];
				X = vision, R = ['La perdida de la ',X,' puede ser sintoma de Lepra'];
				X = ulceras, R = ['Las',X,' en la piel , dependiendo de la erupcion, puede ser sintoma de lepra.'];
				X = articular, R = ['El dolor ',X,' junto con otros sintomas, puede ser sintoma de lepra.'];
				X = sequedad, R = ['La',X,'En la piel, puede ser sintoma de lepra'];
				X = piel, R = ['La',X,' seca puede ser un sintoma de lepra.'];

				
				R = ['Sí, el sintoma', X, 'puede ser un síntoma de la lepra.']
			).

	elizaSintomas1(X, R):- \+sintomas1(X), R = ['El sintoma', X , 'no es sintoma aun de lepra.'].

		sintomas1(adormecimiento).
		sintomas1(articular).
		sintomas1(lesiones).
		sintomas1(deformidades).
		sintomas1(sensibilidad).
		sintomas1(vision).
		sintomas1(ulceras).
		sintomas1(nodulos).
		sintomas1(articular).
		sintomas1(sequedad).
		sintomas1(piel).

		
% /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



	elizaSintomas2(X, R) :-
				sintomas2(X),
				(
					X = sequedad, R = ['La sequedad ocular es uno de los síntomas más comunes del ojo seco. Puedes experimentar una sensación de sequedad, aspereza o arenilla en los ojos. Si presentas estos síntomas de manera persistente, es importante que consultes a un especialista médico para obtener un diagnóstico preciso y recibir el tratamiento adecuado.'];
					X = enrojecimiento, R = ['El enrojecimiento en los ojos puede ser otro síntoma asociado al ojo seco. Puedes notar que tus ojos se ven rojos o inyectados de sangre. Si experimentas enrojecimiento ocular acompañado de otros síntomas, te recomiendo que consultes a un especialista médico para obtener un diagnóstico preciso y recibir el tratamiento adecuado.'];
					X = picazón, R = ['La picazón en los ojos también puede estar relacionada con el ojo seco. Puedes experimentar una sensación incómoda que te lleva a rascarte los ojos. Si la picazón ocular persiste o se vuelve molesta, es recomendable que consultes a un especialista médico para obtener un diagnóstico preciso y recibir el tratamiento adecuado.'];
					X = ardor, R = ['El ardor en los ojos es otro síntoma que puede estar presente en el ojo seco. Puedes sentir una sensación de quemazón o irritación en los ojos. Si experimentas ardor ocular de manera frecuente o persistente, te recomiendo que consultes a un especialista médico para obtener un diagnóstico preciso y recibir el tratamiento adecuado.'];
					X = vision, R = ['La visión borrosa o fluctuante puede estar asociada al ojo seco. Puedes experimentar momentos en los que tu visión no está clara o nítida. Si la visión borrosa persiste o empeora, es importante que consultes a un especialista médico para obtener un diagnóstico preciso y recibir el tratamiento adecuado.'];
					X = sensacion, R = ['Una sensación de cuerpo extraño o arenilla en los ojos también puede ser un síntoma del ojo seco. Puedes sentir que algo está dentro de tus ojos. Si la sensación de cuerpo extraño persiste o se vuelve molesta, te recomiendo que consultes a un especialista médico para obtener un diagnóstico preciso y recibir el tratamiento adecuado.'];
					X = lagrimeo, R = ['Aunque parezca contradictorio, el lagrimeo excesivo puede ser una respuesta del ojo al ojo seco. Puedes tener episodios de lagrimeo constante o incontrolable. Si experimentas lagrimeo excesivo y otros síntomas oculares, es recomendable que consultes a un especialista médico para obtener un diagnóstico preciso y recibir el tratamiento adecuado.'];
					X = fatiga, R = ['La fatiga ocular o cansancio ocular puede ser un síntoma relacionado al ojo seco. Puedes sentir que tus ojos se cansan más rápidamente al realizar actividades visuales. Si experimentas fatiga ocular frecuente o persistente, te recomiendo que consultes a un especialista médico para obtener un diagnóstico preciso y recibir el tratamiento adecuado.'];
					X = luz, R = ['La sensibilidad a la luz, también conocida como fotofobia, puede estar asociada al ojo seco. Puedes experimentar molestia o incomodidad ante la exposición a la luz intensa. Si la sensibilidad a la luz es persistente y afecta tu calidad de vida, es importante que consultes a un especialista médico para obtener un diagnóstico preciso y recibir el tratamiento adecuado.'];

					
					R = ['Sí, el sintoma', X, 'puede ser un síntoma de la lepra.']
				).

		elizaSintomas2(X, R):- \+sintomas2(X), R = ['El sintoma', X , ' no se tiene registro que es sintoma de Ojo Seco'].

			sintomas2(sequedad).
			sintomas2(enrojecimiento).
			sintomas2(picazón).
			sintomas2(ardor).
			sintomas2(visión).
			sintomas2(sensación).
			sintomas2(lagrimeo).
			sintomas2(fatiga).
			sintomas2(luz).





match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), % si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continúo con el resto de la lista
	\+atom(S),
	match(Stim, Input),!.

replace0([], _, _, Resp, R):- append(Resp, [], R),!.





replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), append(R1, [], R),!.

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	length(Index, M), M > 0,
	select(N, Resp, Atom, R1),
	N1 is N + 1,
	replace0(Index, Input, N1, R1, R),!.



% Eliza Sintomas:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSintomas,
    elizaSintomas(Atom, R).

replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSintomas1,
    elizaSintomas1(Atom, R).

replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSintomas2,
    elizaSintomas2(Atom, R).


% Eliza Soluciones:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSoluciones,
    elizaSoluciones(Atom, R).

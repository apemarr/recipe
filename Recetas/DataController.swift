//
//  Singleton.swift
//  Recetas
//
//  Created by Alumno on 13/7/17.
//  Copyright © 2017 Marcin Adamczyk. All rights reserved.
//

import Foundation

class DataController{
    
    static let shareController = DataController()
    
    var recetaList:[Receta]=[Receta.init(titulo: "Tortilla de papas", autor: "Recetas", ingrediente: "3 papas,6 huevos,1 cebolla pequeña,1 pimiento verde,sal,aceite,1 hoja de perejil", preparacion:"Pela y pica la cebolla en dados medianos. Limpia el pimiento verde, retírale el tallo y las pepitas y córtalo en dados. Si las patatas estuvieran sucias, pásalas por agua. Pélalas, córtalas por la mitad a lo largo y después corta cada trozo en medias lunas finas de 1/2 centímetros. Introduce todo en la sartén, sazona a tu gusto y fríe a fuego suave durante 25-30 minutos. Retira la fritada y escúrrela. Pasa el aceite a un recipiente y resérvalo. Limpia la sartén con papel absorbente de cocina. Casca los huevos, colócalos en un recipiente grande y bátelos. Sálalos a tu gusto, agrega la fritada de patatas, cebolla y pimiento y mezcla bien. Coloca la sartén nuevamente en el fuego, agrega un chorrito del aceite reservado y agrega la mezcla. Remueve un poco con una cuchara de madera y espera (20 segundos) a que empiece a cuajarse. Separa los bordes, cubre la sartén con un plato de maRecetasr diámetro que la sartén y dale la vuelta. Échala de nuevo para que cuaje por el otro lado.",imagen:"food1.jpg"),
        Receta.init(titulo: "Cordero al horno", autor: "Recetas", ingrediente: "una pierna de cordero de unos 2 kilos,4-5 dientes de ajo,300ml de vino blanco,150ml de aceite de oliva,sal,pimienta negra,tomillo,romero", preparacion:"Compramos una pierna de cordero que pese unos dos kilos, con lo que podremos servir la receta para unos 3-4 comensales, acompañando la misma con alguna guarnición que nos guste, como puede ser una ensalada o unas papas fritas o asadas, algo que puedes hacer aparte, ya que en esta receta nos vamos a centrar en preparar la pata de cordero para que nos quede lo más sabrosa y jugosa posible, pero sin hacer ninguna guarnición con ella, eso lo dejamos a vuestra elección.Puedes pedir al carnicero que te prepare la pata para hornear haciendole unos cortes.Si prefieres puedes hacerlo tú mismo en casa, haciendo un par de cortes dividiendo la pierna en tres partes, pero sin llegar a separar los trozos, si no haciendo unos cortes profundos para que se hornee bien por todos lados. Una vez vayamos a comenzar a preparar la pierna de cordero, la vamos a lavar bien bajo el grifo, la escurrimos y secamos bien y después la salpimentamos bien por todos lados y la colocamos sobre una bandeja metálica del horno. Aprovechamos para poner el horno a precalentar a 220ºC, con el calor activado arriba y abajo, así lo tendremos bien caliente en cuanto acabemos la receta. Y en un recipiente en el que podamos batir vamos a echar los ajos pelados, el vino blanco, el aceite de oliva virgen y tomillo y romero al gusto, y batimos todo hasta que quede una mezcla homogénea. Colocamos la pata de cordero salpimentada sobre la bandeja elegida, y la pintamos con la mezcla que hemos preparado, de forma que la carne quede bien impregnada, y reservando lo que nos sobre para después. Agregamos un vaso de agua en la bandeja, para que el cordero no se reseque demasiado durante el horneado. Una vez el horno haya alcanzado la temperatura elegida la bajamos a 170ºC y metemos la bandeja en la parte central, con la pata de cordero con la parte interior hacia arriba, y vamos a hornearla sobre 60-70 minutos. Cuando le demos la vuelta vertemos el resto de la salsa que batimos antes, y dejamos hornear otros 40-45 minutos más o menos. Nos debe quedar la pierna de cordero bien asada por todos lados, de forma que la carne se despegue del hueso fácilmente, pero sin llegar a quemarse. Seguramente tras el tiempo indicado no esté aun en su punto, por lo que iremos volteando la misma hasta que por los dos lados esté bien horneada. Si quieres puedes darle un último golpe de calor con el grill, para que quede bien doradita. Cuando esté lista para servir, apagamos el horno y dejamos la pata unos minutos en la bandeja dentro del mismo, con la puerta abierta, y después la servimos en caliente para disfrutar de todo su sabor, que esperamos sea de vuestro agrado.",imagen:"food2.jpg"),
         Receta.init(titulo: "Papas fritas foster con queso y bacon",  autor: "Recetas", ingrediente: "papas fritas,chorizo,1 huevo,oregano,1/2 kilo de papas,140 gr de quesos para gratinar ya rallados: Maasdam, Gouda, Cheddar y curado,bacon en tiras,salsa ranchera casera o envasada", preparacion:"Para hacer la salsa ranchera, mezclamos bien la nata con el zumo de limón, añadimos sal, la cebolla, el ajo y seguimos removiendo. Por último incorporamos la leche, la maRecetasnesa y el cebollino picado. Una vez bien mezclado, pasa a un biberón de cocina si tienes y deja en la nevera un buen rato. Cortamos las papas en tiras,freimos las patatas en abundante aceite, sin dorarlas demasiado. Colocamos encima de papel absorbente para retirar el exceso de aceite.Cortamos un poco las tiras de bacon en cuadraditos y pasamos por una sartén sin nada de aceite hasta dejarlo dorado.Incorporamos a la fuente de las patatas, (a las que habremos quitado el papel), bien escurrido.Rociamos con la salsa. Si no tienes biberón, puedes echar a cucharadas con cuidado o arreglarte con una manga o bolsa de congelación a la que habrá que cortar ligeramente uno de los extremos.Esparcimos por encima la mezcla de quesos y listas para introducir en el horno precalentado a 200º, hasta que el queso se funda. Un estupendo plato para hacer ocasionalmente, y con el que todos van a disfrutar.",imagen:"food3.jpg"),
        Receta.init(titulo: "Paella de marisco", autor: "Recetas", ingrediente: "2 tazas de arroz,4 tazas de caldo de gambas,1/2 kg de calamares, 1/2 kg de gambas frescas, 1 puñado de conchas de mar almejas y mejillones, 1 cebolla, 1 tomate mediano, 1/2 pimiento rojo, 2 dientes de ajo, 1/2 taza de guisantes, 1 ramo de hojas de perejil fresco,aceite de oliva,sal,pimienta,colorante amarillo", preparacion:"Limpia y pela las gambas. Usa las conchas y cabeza para hacer caldo. Resérvalo. Limpia los calamares y pícalos en ruedas. Limpia también las conchas de mar con abundante agua para que suelten cualquier residuo de arena. En una paellera, ó sartén muy grande y profunda, sofríe en aceite de oliva, la cebolla, el ajo, pimiento y tomate picados en cuadritos pequeños. Agrégale un poco de pimienta y sal. Pon los calamares y luego las conchas de mar. Deja que se cocinen unos minutos. Verás que comienza a hacerse un caldo, esto está bien. Agrega las 2 tazas de arroz y revuelve para que se mezcle todo. Seguidamente ponle 4 tazas del caldo de gambas que hiciste anteriormente. Si no te alcanza, completa con agua. Revuelve bien. Agrega una cucharadita de colorante amarillo ó las hebras de azafrán y deja hervir por unos 3 minutos. Aun con líquido en la paellera, agrega los guisantes frescos, las gambas y el perejil previamente picado muy pequeñito. Chequea la sal y la pimienta y agrega de ser necesario. Deja cocinar hasta que esté casi seco el líquido. En este momento puedes ponerle unas tiras de pimiento para decorar y algunos langostinos con su concha. Baja el fuego y tapa. Deja cocinar por 15 minutos y prueba el grano. Si está listo retira del fuego y sirve tu paella de marisco con un chorro de aceite de oliva por encima para darle aun más sabor. Y ya esta lista nuestra paella",imagen:"food4.jpg"),
        Receta.init(titulo: "Spaghetti a la boloñesa", autor: "Recetas", ingrediente: "500 gr. de spaguetis,175 gr. de carne picada de ternera,175 gr. de carne picada de cerdo,1 cebolla,1 diente de ajo,2 zanahorias, 700 gr. de tomates,Queso parmesano rallado,Aceite de oliva,Orégano,Sal y pimienta", preparacion:"Poner agua a calentar a fuego fuerte en una olla grande. Cuando rompa a hervir añadir una cucharadita de sal y los espaguetis, dejar que cueza hasta que esté 'al dente', según instrucciones del paquete (unos 10 minutos). avar, perlar y picar muy finas la zanahoria, el ajo y la cebolla. También lavar y rallar los tomates en un bol aparte, y reservarlos. En una sartén, poner un poco de aceite a calentar a fuego medio. Echar la cebolla y el ajo, cuando la primera este transparente agregar la zanahoria y freír durante unos minutos, hasta que se dore todo.  Agregar la carne picada, salpimentar al gusto y dejar que se haga. Agregar el tomate rallado y mezclar bien, echar un poco de orégano y bajar un poco el fuego, dejar unos minutos para que espese un poco, removiendo de vez en cuando. Escurrir la pasta, servir con la salsa boloñesa por encima y espolvorear un poco de queso rallado.",imagen:"food5.jpg")]
    var postreList:[Receta]=[Receta.init(titulo:"Tocinillo de cielo",autor:"Recetas",ingrediente:"12 yemas,300 gr de azúcar,1 vaso de agua,una corteza de limón",preparacion:"Calienta el agua con el azúcar y la corteza de limón hasta obtener un jarabe de punto de hebra floja.Echa este jarabe en un molde (de paredes lisas) y déjalo templar. Pon las yemas en un bol y bátelas ligeramente. Añade el jarabe sobrante del molde y mézclalo todo con la ayuda de una espátula.Pasa esta mezcla por un colador y échala en el molde untado con el jarabe.Coloca el molde en una vaporera hasta que cuaje. Tardará unos 20 minutos más o menos.Por último, deja enfriar, desmolda y sirve.",imagen:"dessert1.jpg"),
        Receta.init(titulo:"Cupcake de fresa",autor:"Recetas",ingrediente:"Ingredientes para 12 cupcakes o 48 mini cupcakes. Para el bizcocho:120 g de mantequilla sin sal a temperatura ambiente,180 g de azúcar blanco,2 huevos,230 g de harina,2 cucharaditas de levadura,120 ml de leche semidesnatada,1 cucharadita de extracto de vainilla,200g de fresas. Para la crema:250 g de mantequilla sin sal a temperatura ambiente,400g de icing sugar,3 cucharadas de leche,240g de fresas. Para la decoración: 12 fresas",preparacion:"Precalentamos el horno a 180º (160º si es con ventilador).Preparamos la bandeja para cupcakes con 12 cápsulas de papel.Picamos las fresas en trocitos chiquititos. Reservamos. Tamizamos la harina con la levadura química en un bol y reservamos.Batimos la mantequilla con el azúcar hasta que se integren y la mezcla se aclare. Añadimos los huevos, uno a uno, batiendo hasta que se incorporen. Añadimos la mitad de la harina y batimos a velocidad baja hasta que se incorpore.A continuación, añadimos la leche, mezclada con el extracto de vainilla, y volvemos a batir.Añadimos la otra mitad de la harina y batimos a velocidad baja hasta que la mezcla sea homogénea. Incorporamos las fresas usando una espátula.Repartimos la mezcla en las cápsulas, sin llenarlas más de 2/3. Horneamos 22-25 minutos o hasta que un palillo salga limpio.Dejamos templar 5 minutos en la bandeja y luego sobre una rejilla. Para preparar el buttercream, trituramos las fresas con el pasapuré y reservamos. A continuación hemos de tamizar el icing sugar y colocarlo en un bol junto con la mantequilla y la leche. Cubriendo el bol, batimos primero a velocidad baja un minuto. A continuación batimos al menos 4 minutos más a velocidad alta hasta que la mezcla esté plenamente integrada.Incorporamos las fresas y batimos 2 minutos más.Decoramos los cupcakes usando la manga pastelera con una boquila de estrella grande y una fresa natural.",imagen:"dessert2.jpg"),
       Receta.init(titulo:"Batido de fresa",autor:"Recetas",ingrediente:"500 gr de fresas,300 ml de leche entera,5 c/s de azúcar",preparacion:"En primer lugar tenemos que limpiar las fresas del rabito que tienen y las hojas que llevan en la parte superior del fruto, cuando las tengamos ya limpias las lavaremos bajo el grifo del agua y dejaremos escurrir en un escurridor.En un bol, las trocearemos en trozos del mismo tamaño y dejaremos macerar con el azúcar durante una hora para que las fresas absorban el azúcar y creen un jugo muy rico.Las batiremos con  la batidora de vaso o con la batidora eléctrica, echaremos las fresas junto a la leche y batir hasta que este todo homogéneo, probaremos si está bien de azúcar a nuestro gusto y podemos añadirle más.Colar el batido antes de consumirlo, puede tener trazas de las fresas que no os gusten a mi me gusta porque aporta fibra pero es cuestión de gustos, queda más fino si lo pasamos por el colador.Dejaremos enfriar en el frigorífico y consumir cuando queramos.Podemos añadirle mucha más fruta a nuestro batido de fresa , el plátano, el kiwi son dos piezas de fruta que le van muy bien a este batido. Si os gusta tanto la fruta como a mi, probadlo.Podéis servir vuestro batido acompañado de nata montanda o helado de nata con sirope de chocolate, todo esto es cuestión de gustos y de ir probando.",imagen:"dessert3.jpg"),
      Receta.init(titulo:"Tiramisu",autor:"Recetas",ingrediente:"500 g de queso mascarpone,3 huevos,300 g de bizcochitos,150 g de azúca,125 ml de café,40 ml de licor de almendra (amaretto),cacao puro",preparacion:"1.- Para preparar este tiramisú fácil, primero separa en dos bols las claras y las yemas de los huevos. 2.- Añade la mitad del azúcar a las claras y  bate con la batidora de varillas hasta que queden a punto de nieve. Reserva. 3.- Añade a las yemas el resto del azúcar y, sin necesidad de limpiar las varillas, bate hasta que blanqueen y no se aprecien los granos de azúcar. Añade unas cucharadas de queso mascarpone y bate hasta integrar. Repite hasta haber integrado todo el queso mascarpone. 4.- Incorpora las claras poco a poco y mezcla con movimientos envolventes hasta terminar con todas las claras y obtener una crema esponjosa y suave. Si la pruebas ahora, verás qué delicioso sabor. Prepárate que todavía no hemos terminado. 5.- Vierte el café sin azúcar y el licor de almendra en un plato hondo. Sumerge con rapidez, uno a uno, los bizcochitos y déjalos en la bandeja (la mía mide 16cm x 26 cm), uno al lado del otro, hasta cubrir toda la base. Parte bizcochitos si es necesario para cubrir todos los espacios. Extiende la mitad de la crema que has preparado con el queso y los huevos por encima de los bizcochitos. Alisa bien la superficie. 6.- Coloca otra capa de bizcochitos mojados en el café y cubre con el resto de la crema. Deja la superficie tan lisa como te sea posible. Cubre la fuente o molde con un film de cocina y guárdalo en la nevera por lo menos durante 6 horas hasta que se asiente o bien toda la noche. 7.- Retira el film con cuidado. Con la ayuda de un colador, espolvorea con cacao puro toda la superficie del tiramisú. Si quieres presentar más bonita tu tarta, limpia todo el borde de la bandeja. Ahora tu tiramisú fácil estará precioso y riquísimo. Que aproveche!",imagen:"dessert4.jpg"),
      Receta.init(titulo:"Mus de chocolate",autor:"Recetas",ingrediente:"175 g de chocolate negro,30 g de mantequilla,4 huevos,80 g de azúcar en grano o azúcar glas,flores comestibles,hojas de menta",preparacion:"Deshaz el chocolate y la mantequilla al baño maría removiendo con cuidado. Una vez deshecho, añade el azúcar, mezcla bien y deja templar. Separa las claras de las yemas e incorpora éstas (poco a poco y sin dejar de remover) a la mezcla de chocolate y mantequilla. Mientras tanto, con una batidora eléctrica de varillas, monta las claras a punto de nieve y añade una porción de éstas al chocolate, mezclando suavemente. Vierte la mezcla sobre el resto de las claras y vuelve a mezclar con movimientos suaves y envolventes.Reparte la mousse en copas individuales e introdúcelas en el frigorífico durante 1-2 horas.En el momento de servir, adorna con unas hojas de menta y flores comestibles. Consejo:Antes de introducir las copas en el frigorífico te recomiendo que las tapes bien con papel plástico. De esta manera evitarás que se impregnen de otros sabores del frigorífico. Si quieres que la mousse quede más esponjosa y estable, puedes añadir una hoja de gelatina diluida en agua, justo en el momento en que estés montando las claras.",imagen:"dessert5.jpg")]
    var cocinaList:[Cocina]=[Cocina.init(titulo:"Pollo frito estilo americano",ingrediente:"1 kg de pollo en piezas,500 ml de leche entera,100 gr. de harina,50 gr. de harina de maíz fina,Cúrcuma,Pimentón,tomillo,orégano,romero,salvia,Pimienta blanca,Pimienta negra,Cebolla y ajo seco,Sal,Aceite para freír",preparacion:"Lavar y secar las piezas de pollo, colocarlas en un recipiente grande, sazonar con media cucharada de pimentón, media de cúrcuma, 1 cucharadita de especias mixtas para asar, sal, pimienta blanca y negra, remover y luego cubrir con leche entera. Deje marinar por 5 o 6 horas en el refrigerador mezclando un par de veces. Después de este tiempo, tamizar la harina con la mitad de una cucharadita de pimentón, media de ajo ymedia de cebolla deshidratada y en polvo, más 2 pizcas de pimienta blanca. Poner abundante aceite en una olla profunda y encender el fuego. Escurrir el pollo y pasarlo, de una pieza a la vez, por la harina sazonada. Cuando el aceite esté caliente verter suavemente el pollo, que deberá quedar sumergido y cubierto por el aceite; deje freír a fuego medio-bajo por lo menos 20/25 minutos (depende del tamaño de las piezas) teniendo cuidado de girar de vez en cuando. Cuando esté dorado y crujiente retirar del fuego y escurrir sobre una rejilla de alambre cubierta con toallas de papel. Servir caliente, aunque permanecerá crujiente incluso frío!",tipo:"americana",imagen:"americana1.jpg"),Cocina.init(titulo:"Tzatziki",ingrediente:"1 pote de yogur griego,1 pepino,1 diente de ajo,Aceite,Sal,Pimienta",preparacion:"Pelar el pepino y rallarlo (en Grecia usan el rallador de queso de agujeros grandes), salar y ponerlo a escurrir durante al menos media hora en un colador, cubierto con un platillo con un peso encima, para eliminar su agua amarga. Una vez escurrido, apretarlo muy bien con las manos y mezclarlo en un bol con el yogur griego y un diente de ajo picado. Salpimentar y añadir el aceite (al menos una cucharada): las cantidades no son científicas, dependen un poco del gusto personal. Guardar la salsa en la nevera hasta el momento de servir: lo ideal es hacerla el día anterior,para que tome buen sabor pero, al igual que con el condimento, los tiempos de 'descanso' también son subjetivos, depende de si desea un sabor más o menos intenso.",tipo:"griega",imagen:"griega1.jpg"),Cocina.init(titulo:"Bacalao a la romana",ingrediente:"500 gr. de bacalao,500 gr. de tomates,1 diente de ajo,6 cdas. de aceite de oliva virgen extra,400 ml de agua caliente,Aceitunas negras descarozadas,Piñones,Pasas,Pimienta al gusto",preparacion:"Cortar el bacalao (que se habrá hecho remojar durante 24-36 horas, dependiendo de su tamaño) en rodajas, y los tomates en trozos regulares. En una sartén, dorar el ajo en aceite durante unos minutos; cuando esté dorado, retirar y añadir las aceitunas, piñones y pasas previamente remojadas. Cocinar unos minutos, añadir los tomates y cocinar. Agregar 400 ml de agua caliente, una pizca de pimienta y continuar la cocción durante 20 minutos. Enharinar las rodajas de bacalao y, en otra sartén, saltear con un poco de aceite. Transferir el bacalao a la sartén con la salsa de tomate y continuar a fuego lento durante 30 minutos. Notas: Lavar el bacalao con agua corriente y dejar en remojo durante 24-36 horas: es necesario eliminar totalmente todos los restos de la sal de conservación.",tipo:"italiana",imagen:"italiana1.jpg")]
    private init(){
        //Cocina.init(titulo:"",ingrediente:"",preparacion:"",tipo:"",imagen:"")
    }
}

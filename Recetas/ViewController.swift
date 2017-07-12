//
//  ViewController.swift
//  Recetas
//
//  Created by Alumno on 29/6/17.
//  Copyright © 2017 Marcin Adamczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet var tableView:UITableView!
   
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.tableView.delegate   = self
        self.tableView.dataSource = self
        let recetas=Receta()
        recetas.titulo=["Totilla de papas","Cordero al horno","Papas fritas foster con queso y bacon","Paella de marisco","Spaghetti a la boloñesa"]
        recetas.ingredientes=["3 papas,6 huevos,1 cebolla pequeña,1 pimiento verde,sal,aceite,1 hoja de perejil","una pierna de cordero de unos 2 kilos,4-5 dientes de ajo,300ml de vino blanco,150ml de aceite de oliva,sal,pimienta negra,tomillo,romero","papas fritas,chorizo,1 huevo,oregano","1/2 kilo de papas,140 gr de quesos para gratinar ya rallados: Maasdam, Gouda, Cheddar y curado,bacon en tiras,salsa ranchera casera o envasada","2 tazas de arroz,4 tazas de caldo de gambas,1/2 kg de calamares, 1/2 kg de gambas frescas, 1 puñado de conchas de mar almejas y mejillones, 1 cebolla, 1 tomate mediano, 1/2 pimiento rojo, 2 dientes de ajo, 1/2 taza de guisantes, 1 ramo de hojas de perejil fresco,aceite de oliva,sal,pimienta,colorante amarillo","500 gr. de spaguetis,175 gr. de carne picada de ternera,175 gr. de carne picada de cerdo,1 cebolla,1 diente de ajo,2 zanahorias, 700 gr. de tomates,Queso parmesano rallado,Aceite de oliva,Orégano,Sal y pimienta"]
        recetas.preparacion=["Pela y pica la cebolla en dados medianos. Limpia el pimiento verde, retírale el tallo y las pepitas y córtalo en dados. Si las patatas estuvieran sucias, pásalas por agua. Pélalas, córtalas por la mitad a lo largo y después corta cada trozo en medias lunas finas de 1/2 centímetros. Introduce todo en la sartén, sazona a tu gusto y fríe a fuego suave durante 25-30 minutos. Retira la fritada y escúrrela. Pasa el aceite a un recipiente y resérvalo. Limpia la sartén con papel absorbente de cocina. Casca los huevos, colócalos en un recipiente grande y bátelos. Sálalos a tu gusto, agrega la fritada de patatas, cebolla y pimiento y mezcla bien. Coloca la sartén nuevamente en el fuego, agrega un chorrito del aceite reservado y agrega la mezcla. Remueve un poco con una cuchara de madera y espera (20 segundos) a que empiece a cuajarse. Separa los bordes, cubre la sartén con un plato de mayor diámetro que la sartén y dale la vuelta. Échala de nuevo para que cuaje por el otro lado.","Compramos una pierna de cordero que pese unos dos kilos, con lo que podremos servir la receta para unos 3-4 comensales, acompañando la misma con alguna guarnición que nos guste, como puede ser una ensalada o unas papas fritas o asadas, algo que puedes hacer aparte, ya que en esta receta nos vamos a centrar en preparar la pata de cordero para que nos quede lo más sabrosa y jugosa posible, pero sin hacer ninguna guarnición con ella, eso lo dejamos a vuestra elección.Puedes pedir al carnicero que te prepare la pata para hornear haciendole unos cortes.Si prefieres puedes hacerlo tú mismo en casa, haciendo un par de cortes dividiendo la pierna en tres partes, pero sin llegar a separar los trozos, si no haciendo unos cortes profundos para que se hornee bien por todos lados. Una vez vayamos a comenzar a preparar la pierna de cordero, la vamos a lavar bien bajo el grifo, la escurrimos y secamos bien y después la salpimentamos bien por todos lados y la colocamos sobre una bandeja metálica del horno. Aprovechamos para poner el horno a precalentar a 220ºC, con el calor activado arriba y abajo, así lo tendremos bien caliente en cuanto acabemos la receta. Y en un recipiente en el que podamos batir vamos a echar los ajos pelados, el vino blanco, el aceite de oliva virgen y tomillo y romero al gusto, y batimos todo hasta que quede una mezcla homogénea. Colocamos la pata de cordero salpimentada sobre la bandeja elegida, y la pintamos con la mezcla que hemos preparado, de forma que la carne quede bien impregnada, y reservando lo que nos sobre para después. Agregamos un vaso de agua en la bandeja, para que el cordero no se reseque demasiado durante el horneado. Una vez el horno haya alcanzado la temperatura elegida la bajamos a 170ºC y metemos la bandeja en la parte central, con la pata de cordero con la parte interior hacia arriba, y vamos a hornearla sobre 60-70 minutos. Cuando le demos la vuelta vertemos el resto de la salsa que batimos antes, y dejamos hornear otros 40-45 minutos más o menos. Nos debe quedar la pierna de cordero bien asada por todos lados, de forma que la carne se despegue del hueso fácilmente, pero sin llegar a quemarse. Seguramente tras el tiempo indicado no esté aun en su punto, por lo que iremos volteando la misma hasta que por los dos lados esté bien horneada. Si quieres puedes darle un último golpe de calor con el grill, para que quede bien doradita. Cuando esté lista para servir, apagamos el horno y dejamos la pata unos minutos en la bandeja dentro del mismo, con la puerta abierta, y después la servimos en caliente para disfrutar de todo su sabor, que esperamos sea de vuestro agrado.","Para hacer la salsa ranchera, mezclamos bien la nata con el zumo de limón, añadimos sal, la cebolla, el ajo y seguimos removiendo. Por último incorporamos la leche, la mayonesa y el cebollino picado. Una vez bien mezclado, pasa a un biberón de cocina si tienes y deja en la nevera un buen rato. Cortamos las papas en tiras,freimos las patatas en abundante aceite, sin dorarlas demasiado. Colocamos encima de papel absorbente para retirar el exceso de aceite.Cortamos un poco las tiras de bacon en cuadraditos y pasamos por una sartén sin nada de aceite hasta dejarlo dorado.Incorporamos a la fuente de las patatas, (a las que habremos quitado el papel), bien escurrido.Rociamos con la salsa. Si no tienes biberón, puedes echar a cucharadas con cuidado o arreglarte con una manga o bolsa de congelación a la que habrá que cortar ligeramente uno de los extremos.Esparcimos por encima la mezcla de quesos y listas para introducir en el horno precalentado a 200º, hasta que el queso se funda. Un estupendo plato para hacer ocasionalmente, y con el que todos van a disfrutar.","Limpia y pela las gambas. Usa las conchas y cabeza para hacer caldo. Resérvalo. Limpia los calamares y pícalos en ruedas. Limpia también las conchas de mar con abundante agua para que suelten cualquier residuo de arena. En una paellera, ó sartén muy grande y profunda, sofríe en aceite de oliva, la cebolla, el ajo, pimiento y tomate picados en cuadritos pequeños. Agrégale un poco de pimienta y sal. Pon los calamares y luego las conchas de mar. Deja que se cocinen unos minutos. Verás que comienza a hacerse un caldo, esto está bien. Agrega las 2 tazas de arroz y revuelve para que se mezcle todo. Seguidamente ponle 4 tazas del caldo de gambas que hiciste anteriormente. Si no te alcanza, completa con agua. Revuelve bien. Agrega una cucharadita de colorante amarillo ó las hebras de azafrán y deja hervir por unos 3 minutos. Aun con líquido en la paellera, agrega los guisantes frescos, las gambas y el perejil previamente picado muy pequeñito. Chequea la sal y la pimienta y agrega de ser necesario. Deja cocinar hasta que esté casi seco el líquido. En este momento puedes ponerle unas tiras de pimiento para decorar y algunos langostinos con su concha. Baja el fuego y tapa. Deja cocinar por 15 minutos y prueba el grano. Si está listo retira del fuego y sirve tu paella de marisco con un chorro de aceite de oliva por encima para darle aun más sabor. Y ya esta lista nuestra paella","Poner agua a calentar a fuego fuerte en una olla grande. Cuando rompa a hervir añadir una cucharadita de sal y los espaguetis, dejar que cueza hasta que esté 'al dente', según instrucciones del paquete (unos 10 minutos). avar, perlar y picar muy finas la zanahoria, el ajo y la cebolla. También lavar y rallar los tomates en un bol aparte, y reservarlos. En una sartén, poner un poco de aceite a calentar a fuego medio. Echar la cebolla y el ajo, cuando la primera este transparente agregar la zanahoria y freír durante unos minutos, hasta que se dore todo.  Agregar la carne picada, salpimentar al gusto y dejar que se haga. Agregar el tomate rallado y mezclar bien, echar un poco de orégano y bajar un poco el fuego, dejar unos minutos para que espese un poco, removiendo de vez en cuando. Escurrir la pasta, servir con la salsa boloñesa por encima y espolvorear un poco de queso rallado."]
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    //CABECERA
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.red
        
        let label = UILabel.init(frame: CGRect.init(x: 20, y: 10, width: UIScreen.main.bounds.width - 20, height: 56))
        if section==0{
            label.text = "Platos"
        }
        else{
            label.text = "Postres"
        }
        view.addSubview(label)
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 56
    }
    
    
    
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var platos=["tortilla de papas","cordero","papas fritas con huevo","paella","spaghetti"]
        var postres=["tocinillo","cupcake","batido de fresa","tiramisu","mus de chocolate"]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell") as! RecipeTableViewCell
        if indexPath.section==0{
        let imageStr=String.init(format:"food%lu.jpg", indexPath.row+1)
        cell.imagenView?.image=UIImage.init(named:imageStr)
        cell.titleRecipe?.text = platos[indexPath.row]
        cell.autor?.text="autor"
        
        }
        if indexPath.section==1{
            let imageStr=String.init(format:"dessert%lu.jpg", indexPath.row+1)
            cell.imagenView?.image=UIImage.init(named:imageStr)
            cell.titleRecipe?.text = postres[indexPath.row]
            cell.autor?.text="autor"
            
        }
        return cell
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


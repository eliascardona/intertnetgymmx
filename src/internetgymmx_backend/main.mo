import Float "mo:base/Float";
import HashMap "mo:base/HashMap";
import Nat "mo:base/Nat";
import Hash "mo:base/Hash";
import Iter "mo:base/Iter";

actor internetgymmx {

	stable var cId : Nat = 0;

	var calculoRodamiento : Nat = 0;


	type Requerimientos = {
		vidaUtil: Float;
		cargaAxial: Float;
		cargaRadial: Float;
		revoluciones: Float;
	};


	var calculos = HashMap.HashMap<Nat, Requerimientos>(0, Nat.equal, Hash.hash);

	// private func raizCubica(n : Float) : Float {

	// 	var estimacion : Float = n/3.0;
    
	// 	while(true) {
	// 		var nuevaEstimacion = (2 * estimacion + n / (estimacion * estimacion))/3;

	// 		if(nuevaEstimacion == estimacion) {
	// 			break;
	// 		}

	// 		estimacion = nuevaEstimacion;
	// 	};
    
	// 	return estimacion;
	// }


	public func calcularRodamiento(elem : Requerimientos) : () {

		let id : Nat = cId;
		cId+=1;

		calculos.put(id, elem);

		// variables para manejar los cálculos

//		var varL : Float = elem.vidaUtil*revoluciones;
//
//		var fuerzauno : Float = 1*elem.cargaRadial + 2*elem.cargaAxial;
//		var fuerzados : Float = 0.5*elem.cargaRadial + 1.4*elem.cargaAxial;
//		var fElegida : Float = 0.0;
		
//		stable var rP : Float = 0;
//		stable var raiz : Float = 0;



//		if(fuerzauno > fuerzados) {
//			fElegida := fuerzauno;
//		} else if(fuerzauno < fuerzados) {
//			fElegida := fuerzados;
//		}

		
//		rP := (elem.vidaUtil*1000000)/1000000;
//		raiz := resParcial**0.333333;
//
//		var resConRaiz : Float = fElegida*laRaiz;

		// fin de los cálculos


//		calculoRodamiento := resConRaiz;
		();


	};


	public query func mostrarCalculos () : async [(Nat, Requerimientos)] {

		let miIter : Iter.Iter<(Nat, Requerimientos)> = calculos.entries();
           
		let miArray : [(Nat, Requerimientos)] = Iter.toArray(miIter);


		return miArray;

	};


	// public func eliminarCalculo(id : Nat) : async Text {

	// 	let qs : ? Requerimientos = calculos.get(id);

	// 	switch(qs) {

	// 		case(null) {
	// 			return "El cálculo que deseas eliminar no existe";
	// 		};

	// 		case(?qres) {
	// 			calculos.remove(id);
	// 			return "Cálculo eliminado exitosamente";
	// 		};

	// 	};

	// };

};





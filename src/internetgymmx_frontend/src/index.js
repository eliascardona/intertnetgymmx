import { internetgymmx_backend } from "../../declarations/internetgymmx_backend"
//import { AuthClient } from "@dfinity/auth-client"
//import { HttpAgent } from "@dfinity/agent"
//let actor = internetgymmx_backend

const editorBtn = document.getElementById("abrir-editor")
const cerrarEditor = document.getElementById("cerrar-editor")
const modalEditor = document.getElementById("modal-editor")
const formUno = document.getElementById("form-uno")


editorBtn.addEventListener("click", () => {
	modalEditor.style.display="block"
})


cerrarEditor.addEventListener("click", () => {
	modalEditor.style.display="none"
})


formUno.addEventListener("submit", async (e) => {
	e.preventDefault()
	const crearData = new FormData(e.target)

	const dato1 = crearData.get("dato1")
	const dato2 = crearData.get("dato2")
	const dato3 = crearData.get("dato3")
	const dato4 = crearData.get("dato4")

	const Front = {
		vidaUtil: parseInt(dato1),
		cargaAxial: parseInt(dato2),
		cargaRadial: parseInt(dato3),
		revoluciones: parseInt(dato4),
	}
	console.log("objeto enviado")
	console.log(Front)

	await internetgymmx_backend.calcularRodamiento(Front)
})


//loginBtn.addEventListener("click", async (e) => {
//	e.preventDefault()
//	console.log("identificando...")
//
//	let authClient = await AuthClient.create()
//
//	await new Promise((resolve, reject) => {
//		authClient.login({
//			identityProvider: process.env.INTERNET_IDENTITY_URL,
//			onSuccess: () => {
//				console.log("Identificación exitosa")
//				resolve()
//			},
//			onError: (error) => {
//				console.error("Error on Internet Identity 'auth/client' process:", error)
//				reject(error)
//			},
//		})
//	})
//
//	const identity = authClient.getIdentity()
//
//	const agent = new HttpAgent({identity})
//
//	actor = createActor(process.env.DECENTRALIZEDGYM_BACKEND_CANISTER_ID, {
//		agent,
//	})
//
//	return false
//})





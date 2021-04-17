lang = {
	/*Commands*/
	["!help"] : "!pomoc",
	["!helpjob"] : "!pomocposla",
	["!changeowner"] : "!promenivlasnika",
	["!changegroup"] : "!promenigrupu",
	["!changename"] : "!promeniime",
	["!changegroupowner"] : "!promenigrupuvlasnika",
	["!movecam"] : "!pomerikameru",
	["!installmod"] : "!postavkamoda",
	["!removemod"] : "!uklonimod",
	["!info"]: "!informacije",
	["!find"]: "!pronadji",
	["!destroycam"] : "!unistikameru",
	["!grades"] : "!titula",
	["!mods"] : "!modovi",
	["!viewcam"] : "!pregledkamere",
	["!money"] : "!novac",
	["!withdrawmoney"] : "!podicinovac",
	["!depositmoney"] : "!orocitinovac",
	["!clients"] : "!klijenti",
	["!jobs"] : "!poslovi",
	["!employees"] : "!zaposleni",
	["!hireplayer"] : "!zaposlilice",
	["!invoice"] : "!racuni",
	["!promoteplayer"] : "!unapredilice",
	["!kickplayer"] : "!otpustilice",
	["!openinvoices"] : "!otvoriracune",
	["!exit"] : "!izadji",
	["!fixcam"] : "!popravikameru",
	["!listbrokencams"] : "!listapokvarenihkamera",

	/* !help texts */

	["commandnotfound"] : "Komanda nije pronadjena, ukucaj !pomoc",

	["help"] : `
		<p>!mudardono id (jogador id ou trab) camgrupo camnome</p> 
		<p>!mudargrupo id grupo</p> 
		<p>!mudarnome id nome</p> 
		<p>!mudardonogrupo grupo "jogador id ou trab" "nome do antigo dono"</p>
		<p>!instalarmod id modnome</p>
		<p>!movercam id</p> 
		<p>!fixcam id</p> 
		<p>!destruircam id</p> 
		<p>!vercam id</p>
		<p>!lista_cams_avariadas</p> 
		<p>!info | Lista todas as câmeras conectadas</p> 
		<p>!encontrar id | Obtenha a localização do GPS do acampamento</p> 
		<p>!trabalhos | Lista de empregos disponíveis que podem ser usados ​​como proprietário</p>
		<p>!clientes | Lista de clientes mais próximos</p>
		<p>!modos | Lista de modos disponíveis</p>
		<p>!fechar</p>
	`,
	["helpjobworker"] : `
		<p>!fatura jog_id quantia (escreva sua mensagem de fatura aqui)</p>
		<p>!depositardinheiro quantia</p>
	`,
	["helpjobbos"] : `
		<p>!retirardinheiro quantia</p>
		<p>!dinheiro</p><p>!contratar_jog jog_id</p>
		<p>!kick_jog primeiro nome último nome</p>
		<p>!promover_jog primeiro nome último nome nível</p>
		<p>!nivel</p>
		<p>!empregados</p>
	`,
	["mods"] : `
		<p> radar | Mede a velocidade do veículo e a exibe na tela </p>
		<p> facereq | Identifica o rosto de uma pessoa e informa os detalhes da pessoa</p>
		<p> zoom | Permite que você use o zoom</p>
	`,
	
	
	/* Other */

	["fetchingdata"] : "Preuzimanje podataka...",
	["missingarguments"] : "Nedostaje argumenata",
	["cameraupdated"] : "Kamera je azurirana",
	["invalidid"] : "Nevazeci id",
	["alreadyhavemod"] : "Vec postoji instaliran mod",
	["nomod"] : `!`,
	["removedmod"] : "Uklonjeni mod",
	["invalidmod"] : "Nevazeci mod",
	["modinstalled"] : "Mod je instaliran",
	["amountofcams"] : "Kolicina kamera",
	["noconnections"] : "Nema konekcije",
	["newconnection"] : "Nova konekcija",
	["lostconnectionto"] : "Konekcija je izgubljena",
	["destroying"] : "Unistavanje kamera",
	["connecting"] : "Konektovanje",
 
	["id"] : "Id",
	["owner"] : "Vlasnik",
	["group"] : "Grupa",
	["name"] : "Ime",
	["from"] : "Od",
	["modds"] : "Modovi",
	["status"] : "Status",
	["unbroken"] : "Kamera je u funkciji",
	["broken"] : "Kamera je pokvarena",
	["destroyed"] : "Polomljen",
	["gpsSet"] : "Lokacija kamere je oznacena na mapi",

}

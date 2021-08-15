const fill = (list) => {
    let table = "";

    if(list.length > 0){
        for(let i = 0; i < list.length; i++) {
            table += `
			<tr>
				<td>${ i + 1 }</td>
				<td>${list[i].nameGame}</td>
				<td>${list[i].datePremiere}</td>
				<td><img src="data:image/jpeg;base64,${list[i].imgGame}"></td>
				<td>${list[i].status ? "Activo" : "Inactivo"}</td>
				<td>
					<button type="button" class="btn btn-info">Ver</button>
					<button type="button" class="btn btn-primary">Modificar</button>
					<button type="button" class="btn btn-danger">Eliminar</button>
				</td>
			</tr>
			`;
        }
    }else{
        table = `
		<tr class="text-center">
			<td colspan="5">No hay registros para mostrar</td>
		</tr>
		`;
    }
    $(`#container > tbody`).html(table);
};

const findAll = () => {
    const contextPath = window.location.origin + window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));

    $.ajax({
        type: 'GET',
        url: contextPath + '/readGames',
        data: { }
    }).done(function(res){
        fill(res.listGames);
    });
};

findAll();




$('[id^="btn-delete"]').click(function() {
    let code = $(this).attr('data-code');
    let text = $(this).attr('data-text');

    $('#id').val(code);
    $('#text-delete').text(text);
});




//     --Login Directo en front
//$('[id^="btn-login"]').click(function(){
//
//    $.ajax({
//        type: 'POST',
//        url: 'http://localhost:8080/Servlets_war/login',
//        data: {
//            action: 'login',
//        }
//    }).done(function(res){
//        console.log(res);
//        let user = res.user;
//
//      $('#lbl_email').text(user.email);
//        $('#lbl_password').text(user.password);
//    });
//});






$('[id^="btn-altagames"]').click(function(){
    let id = $(this).attr('data-code');

    $.ajax({
        type: 'POST',
        url: 'http://localhost:8080/Servlets_war/createGames',
        data: {
            action: 'createGames'
        }
    }).done(function(res){
        console.log(res);
        let games = res.games;

        $('#lbl_name').text(games.name);
        $('#lbl_imgGame').text(games.imgGame);
        $('#lbl_datePremiere').text(games.datePremiere);
        $('#lbl_Category').text(games.beanCategory.Category);
    });
});

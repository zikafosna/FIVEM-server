$(document).ready(function(){
    window.addEventListener('message', function( event ) {      
      if (event.data.action == 'open') {

        const weapons = document.getElementById("weapons");
        weapons.innerHTML = '';

        $('.container').css('display', 'block');
        $('.content-choose').css('display', 'block');

      } else {
        $('.container').css('display', 'none');
      }
    });

    $( ".weapon-gun" ).click(function() {
      $('.content-choose').hide();
      $('.content-weapon-list').fadeIn();
      LoadWeapon('weapon');
    });

    $( ".hand-gun" ).click(function() {
      $('.content-choose').hide();
      $('.content-weapon-list').fadeIn();
      LoadWeapon('hand');
    });
    
    $( ".close" ).click(function() {
      $('.container').css('display', 'none');
      $.post('http://stefke_oruzje/escape', JSON.stringify({}));
    });
});

function LoadWeapon(type) {
  if (type == 'weapon') {

    $(".content-weapon-list").append
      (`
      
      <div class="content-weapon-list-weapon" onclick="buy('pistol')">
          <div class="content-weapon-list-weapon-footer">
              <img class="content-weapon-list-weapon-image" src="./weapons/pistol.png">
              <p>20x | $ 790</p>
          </div>
      </div>

      <div class="content-weapon-list-weapon" onclick="buy('beacon')">
          <div class="content-weapon-list-weapon-footer">
              <img class="content-weapon-list-weapon-image" src="./weapons/beacon.png">
              <p>20x | $ 250</p>
          </div>
      </div>

      <div class="content-weapon-list-weapon" onclick="buy('revolver')">
          <div class="content-weapon-list-weapon-footer">
            <img class="content-weapon-list-weapon-image" src="./weapons/revolver.png">
            <p>20x | $ 450</p>
          </div>
      </div>

      <div class="content-weapon-list-weapon" onclick="buy('appistol')">
          <div class="content-weapon-list-weapon-footer">
            <img class="content-weapon-list-weapon-image" src="./weapons/appistol.png">
            <p>20x | $ 890</p>
          </div>
      </div>

      `);

  } else if (type == 'hand') {
    $(".content-weapon-list").append
    (`
    
      <div class="content-weapon-list-weapon" onclick="buy('knife')">
          <div class="content-weapon-list-weapon-footer">
            <img class="content-weapon-list-weapon-image" src="./weapons/knife.png">
            <p>$ 890</p>
          </div>
      </div>

      <div class="content-weapon-list-weapon" onclick="buy('wrench')">
          <div class="content-weapon-list-weapon-footer">
            <img class="content-weapon-list-weapon-image" src="./weapons/wrench.png">
            <p>$ 780</p>
          </div>
      </div>

      <div class="content-weapon-list-weapon" onclick="buy('baseball-bat')">
          <div class="content-weapon-list-weapon-footer">
            <img class="content-weapon-list-weapon-image" src="./weapons/baseball-bat.png">
            <p>$ 230</p>
          </div>
      </div>

      <div class="content-weapon-list-weapon" onclick="buy('axe')">
          <div class="content-weapon-list-weapon-footer">
            <img class="content-weapon-list-weapon-image" src="./weapons/axe.png">
            <p>$ 560</p>
          </div>
      </div>

    `);
  }
}

function buy(name) {
  $.post('http://stefke_oruzje/buy', JSON.stringify({name: name}));
  $.post('http://stefke_oruzje/escape', JSON.stringify({}));
}
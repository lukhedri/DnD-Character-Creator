        var rollOne = document.querySelector("#roll1");
        var rollTwo = document.querySelector("#roll2");
        var rollThree = document.querySelector("#roll3");
        var rollFour = document.querySelector("#roll4");
        var roll5 = document.querySelector("#roll5");
        var roll6 = document.querySelector("#roll6");


function randomInt( intMin, intMax )
{
	intMax = Math.round( intMax );
	intMin = Math.round( intMin );
	return intMin + Math.floor( intMax * (Math.random() % 1));
}


function rollStats()
{

	var results = new Array(6);
for( var i = 0; i < 6; i++ )
		{
			var roll;
			var roll1, roll2, roll3, roll4;
			var least;

			roll1 = randomInt( 1,6 );
			roll2 = randomInt( 1,6 );
			roll3 = randomInt( 1,6 );
			roll4 = randomInt( 1,6 );

			roll = roll1 + roll2 + roll3 + roll4;

			least = roll1;
			least = ( roll2 < least ) ? roll2 : least;
			least = ( roll3 < least ) ? roll3 : least;
			least = ( roll4 < least ) ? roll4 : least;

			roll -= least;

			results[i] = roll;
                        console.log(roll);
                }
    rollOne.innerHTML = results[0];
    rollTwo.innerHTML = results[1];
    rollThree.innerHTML = results[2];
    rollFour.innerHTML = results[3];
    roll5.innerHTML = results[4];
    roll6.innerHTML = results[5];
    console.log("REEE");
    window.location.href="ability.php?r1=" + results[0] + "&" + "r2=" + results[1] + "&" + "r3=" + results[2] + "&" + "r4=" + results[3] + "&" + "r5=" + results[4] + "&" + "r6=" + results[5];
}

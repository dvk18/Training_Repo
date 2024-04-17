<<__EntryPoint>>
function main(): void {
    
    $add = ($a, $b) ==> $a + $b;
    $result = $add(10, 20);
    echo "performing add : $result \n";

    // Define and use an anonymous function with type annotations
    $multiply = ($x, $y) ==> ($x * $y);
    $result2 = $multiply(5, 4);
    echo "performing mul : $result2\n";
}




/*<<__EntryPoint>>
async function main_async(): Awaitable<void>{
    $num = $f(23);
    echo "$num";
}
$f = $x ==> $x + 1;

*/
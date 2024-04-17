//Squaring and Sorting values in a vector

use namespace HH\Lib\Vec;

<<__EntryPoint>>

function main():void{
$x = vec[2,1,3]
  |> Vec\map($$, $a ==> $a * $a) // $$ with value vec[2,1,3]
  |> Vec\sort($$); // $$ with value vec[4,1,9]
  foreach ($x as $x1){
    echo" \t $x1";      
  }
  echo "\n";
}
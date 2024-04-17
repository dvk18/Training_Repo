function f(int $lv): void {
  $lv++; 
  echo "\$lv = $lv\n";
  
}

<<__EntryPoint>>
function main(): void {

    $lv = 1;
    $vals = vec[1,2,3,4];
    $k = keyset[2, 1];
    $d = dict['a' => 1, 'b' => 3];
    // echo $vals;
  for ($i = 1; $i <= 3; $i++)
  {
    f($lv);
     if($lv == 10){
            break;
        }
  }       

}
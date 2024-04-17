use namespace HH\Lib\{File, IO};

async function main_async(): Awaitable<void> {
  
  $_in = IO\request_input();  //uncompiled
  
  $out = IO\request_output(); //uncompiled

  $message = "Hello, world\n";
  await $out->writeAllAsync($message);


  using ($tf = File\temporary_file()) {
    $f = $tf->getHandle();

    await $f->writeAllAsync($message);

    $f->seek(0);
    $content = await $f->readAllAsync();
    await $out->writeAllAsync($content);
  }
}
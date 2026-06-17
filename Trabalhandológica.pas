program AlgoritmoMazano;
uses
  crt;
type
//apelidos para os tipos de variaveis utilizadas no programa
  nimparoupar = array [1..6] of longint;
  UniaoAeB = array[1..12] of longint;
  interations = integer;
  identificadores = longint;
var
//Variaveis para armazenar os valores pares e impares digitados pelo usuario
  A, B: nimparoupar;
// Variavel para armazenar a uniao dos valores pares e impares digitados pelo usuario  
  C: UniaoAeB;
// Variaveis para controle de iteracao dos loops  
  I, I2: interations;
// Variveis para deteco de números pares e impares
  detector, resto: identificadores;
begin
  clrscr;
// Loop para digitar os valores de A, com detecao de numeros pares
  for I := 1 to 6 do
    begin
      resto := 1;
// Loop para garantir que o usuario digite apenas numeros pares      
      while (resto <> 0) do
        begin
          writeln ('Digite o valor', I, ' de A:');
          readln (detector);
          resto := detector -2* (detector div 2);
// Detecao de numero par, caso o usuario digite um numero impar, o programa exibe uma mensagem de erro e solicita que o usuario digite novamente um numero par
          if (resto <> 0) then
            begin
              writeln ('O valor digitado é invalido, por favor, digite um numero par');
          end;
// Caso o usuario digite um numero par, o programa armazena o valor na variavel A e na variavel c, que armazena a uniao dos valores pares e impares digitados pelo usuario          
          if (resto = 0) then
            begin
              A[I] := detector;
              C[I] := A[I];
            end;
      end;
    end;
// Loop para digitar os valores de B, com detecao de numeros impares    
  I2 := 6;
  for I := 1 to 6 do
  begin
    resto := 0;
// Loop para garantir que o usuario digite apenas numeros impares    
    While (resto = 0) do
      begin
        writeln ('Digite o valor ', I, ' de B');
        readln (detector);
        resto := detector - 2* (detector div 2);
        // Detecao de numero impar, caso o usuario digite um numero par, o programa exibe uma mensagem de erro e solicita que o usuario digite novamente um numero impar
        if (resto <> 0) then
        begin
        B[I] := detector;
        C[I2] := B[I];
        I2 := I2+1;
        end
        else
        begin
          writeln ('O valor digitado é invalido, por favor, digite um número impar');
        end;
    end;
  end;
// Loop para exibir os valores pares digitados pelo usuario, armazenados na variavel A e na variavel B, que armazena a uniao dos valores pares e impares digitados pelo usuario  
  for I := 1 to 6 do
    begin
      writeln ('Os valores pares em A s�o:', C[I]);
    end;
  for I := 6 to 12 do
    begin
      writeln ('Os valores impares em B s�o:', C[I]);
    end;
  // Pausa para o usuario visualizar os resultados antes de encerrar o programa
  writeln ('Pressione Enter para encerrar o programa');  
  readln ();
end.
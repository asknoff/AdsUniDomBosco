Program Pzim ;

var
ValorDoCarroV, ValorDoCarroC, ValorDoCarroF, ValorDoCarroR, V, C, F, R, valorCarro: real;
valorOP, valor1, valor2, valor3, valor4, valorTotal, custo, lucro, lucroOP : real;
decisaoOP, decisao, decisaoOP2, decisaoOP3 : string;
resposta, opcional: integer;  

Begin
									
V := 100000;       
C := 100000;
F := 100000;
R := 100000;
ValorDoCarroV := V + 15000;
ValorDoCarroC := C + 15000;   
ValorDoCarroF := F + 15000;
ValorDoCarroR := R + 15000;
decisaoOP := 'n';
valorOP := 0;
valor1 := 650;   
valor2 := 650;
valor3 := 650;
valor4 := 650;
custo := 500;
lucroOP := 0;

   repeat

   	writeln('Ola, escolha uma marca que gostaria de dar uma olhada');
   	writeln('');
   	writeln(' 1: Volkswagen ');
   	writeln(' 2: Chevrolet ');
   	writeln(' 3: Fiat ');
   	writeln(' 4: Renault ');
   	write('Sua escolha é: ');
   	readln(resposta);
   	writeln('');
   	
   	case resposta of
   		1 : 
			begin
			    writeln('Sua escolha foi Volkswagen');
			    writeln('Modelo: GOL');
			    writeln('O valor do veiculo é de ', ValorDoCarroV:8:2,' reais.');
			    writeln('');
			    valorCarro := ValorDoCarroV;
			end;
			
			2  : 
			begin
			    writeln('Sua escolha foi Chevrolet');
			    writeln('Modelo: ONIX');
			    writeln('O valor do veiculo é de ', ValorDoCarroC:8:2,' reais.');
			    writeln('');
			    valorCarro := ValorDoCarroC;
			end;
			
		  3  : 
			begin
			    writeln('Sua escolha foi Fiat');
			    writeln('Modelo: ARGO');
			    writeln('O valor do veiculo é de ', ValorDoCarroF:8:2,' reais.');
			    writeln('');
			    valorCarro := ValorDoCarroF;
			end;
   		
   		4  : 
			begin
			    writeln('Sua escolha foi Renault');
			    writeln('Modelo: SANDERO');
			    writeln('O valor do veiculo é de ', ValorDoCarroR:8:2,' reais.');
			    writeln('');
			    valorCarro := ValorDoCarroR;
			end;
		end;
		
		write('Você deseja acrescentar algum opcional s/n ?: ');
		readln(decisaoOP);
		
		if (decisaoOP = 's') then
			begin  
				repeat  
					writeln('Opcionais: ');  
				  writeln(' 1: película.....: 650 reais');
	   			writeln(' 2: frisos.......: 650 reais');
	   			writeln(' 3: rodas........: 650 reais');      
	   			writeln(' 4: radio........: 650 reais');
	   			writeln('');
	   			write('Escolha um opcional: ');
	   			writeln('');
	   			readln(opcional);
	   			case opcional of
	   				1:
	   					valorOP := valorOP + valor1;
	   				2:
	   					valorOP := valorOP + valor2;
	   				3:
	   					valorOP := valorOP + valor3;
	   				4:
	   					valorOP := valorOP + valor4;
	   			end;
   				write('Deseja acrescentar mais um opcional s/n ?');
   				readln(decisaoOP2);
   				writeln('');
   				
   			until(decisaoOP2 = 'n');
			end;
		                                       
		valorTotal := valorOP + valorCarro + valorTotal;
		writeln('O valor dos opcionais ficou no total de ', valorOP:8:2,' reais. Sendo assim, o total da sua equisição ficou: ', valorTotal:8:2,' reais.');
		lucro := (valorCarro - 100000);
		lucroOP := valorOP - ( valorOP*(76.923/100 )) ; 
		writeln('');         
		write('Deseja finalizar a compra s/n?: ');    
		read(decisaoOP3);
		until(decisaoOP = 'n') or (decisaoOP3 = 's');
		writeln('');
		writeln('');
		writeln('Relatório Comercial');
		writeln('');
		writeln('O lucro do veiculo foi de: ',lucro:8:2,' reais.');
		writeln('O lucro dos acessorios foram de: ',lucroOP:8:2,' reais.');
		writeln('');
		writeln('');
		writeln ('FIM');  	
		end.
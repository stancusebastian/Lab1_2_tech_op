% Definirea functiei obiectiv
c = [3, 2]; % coeficientii functiei obiectiv Z = 3x1 + 2x2

% Definirea matricei de coeficienti a constrangerilor
A = [-1, -1;  % -x1 - x2 <= -4
     1, -1];  % x1 - x2 <= 2

% Definirea vectorului b pentru constrangeri
b = [-4; 2];  % valorile limitelor

% Definirea limitelor variabilelor (x1 si x2)
lb = [0, 0];  % x1 >= 0, x2 >= 0

% Aplicam metoda Simplex folosind fmincon (solutia optimizarii)
options = optimset('Display','off'); % pentru a ascunde rezultatele intermediare
[x, fval] = fmincon(@(x) c*x',[],A,b,[],[],lb,[],[],options);

% Afisam rezultatele
disp('Solutia optima pentru variabilele x1 si x2 este:');
disp(x);
disp('Valoarea minima a functiei obiectiv Z este:');
disp(fval);





% Coeficientii functiei obiectiv (profitul)
f = [-5, -4];  % Trebuie să maximizăm, deci punem coeficientele negative

% Matricea constrângerilor
A = [2, 1;   % 2x1 + x2 <= 100 (pentru resursa R1)
     1, 2];  % x1 + 2x2 <= 80 (pentru resursa R2)

% Vectoarele de limită
b = [100; 80];  % 100 pentru resursa R1 si 80 pentru resursa R2

% Opțiuni pentru metoda Simplex
options = optimoptions('linprog', 'Display', 'off');  % Nu afişează pașii în timpul execuției

% Rezolvarea problemei de maximizare
[x, fval] = linprog(f, A, b, [], [], [0, 0], [], options);

% Afișarea rezultatului
disp('Valorile optime pentru x1 și x2:');
disp(x);
disp('Profitul maxim:');
disp(-fval);  % Rezultatul este negativ, deci trebuie să inversăm semnul

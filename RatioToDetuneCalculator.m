ro = { C0 = 0, CSharp = 100, D = 200, DSharp = 300, E = 400, F = 500, FSharp = 600, G  = 700, GSharp = 800, A = 900, ASharp = 1000, B = 1100, C1 = 1200}; %Note values in cents for root
de = { c0 = 0, cSharp = 100, d = 200, dSharp = 300, e = 400, f = 500, fSharp = 600, g  = 700, gSharp = 800, a = 900, aSharp = 1000, b = 1100, c1 = 1200}; %Note values in cents for desired
 
 C0     = ro{1,1}; 
 CSharp = ro{1,2};
 D      = ro{1,3};
 DSharp = ro{1,4};
 E      = ro{1,5};
 F      = ro{1,6};
 FSharp = ro{1,7};
 G      = ro{1,8};
 GSharp = ro{1,9};
 A      = ro{1,10};
 ASharp = ro{1,11};
 B      = ro{1,12};
 C1     = ro{1,13};
 % Note values array positions for root
 
 c0     = de{1,1}; 
 cSharp = de{1,2};
 d      = de{1,3};
 dSharp = de{1,4};
 e      = de{1,5};
 f      = de{1,6};
 fSharp = de{1,7};
 g      = de{1,8};
 gSharp = de{1,9};
 a      = de{1,10};
 aSharp = de{1,11};
 b      = de{1,12};
 c1     = de{1,13};
 % Note values array positions for desired
 
disp("Enter the following upper-case values only: C0, CSharp, D, DSharp, E, F, FSharp, G, GSharp, A, ASharp, B, C1")

root_note = input('Enter the root note: ');
switch(root_note)

case C0 
  rd_pos = {cSharp, d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1};
  
  disp("pos_notes : cSharp, d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1") %positive notes for desired from root
  
  disp("Enter the following lower-case values only: c0, cSharp, d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1")
  
  desired_detune = input('Enter the desired note to detune: '); 
  
  Num = input('Enter a Numerator for root to desired ratio: ');
  Den = input('Enter a Denominator for root to desired ratio: ');
  roottoDesired_ratiotocents = 1200*log2(Num/Den); %Ratio to cents values
  
switch(desired_detune)
  
  case rd_pos
  diff_value = desired_detune - root_note;         %Difference between root and desired
  pos_detunevalue_at_desired = roottoDesired_ratiotocents - diff_value 

endswitch

case CSharp 
  rd_pos = {d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1};
  rd_neg = {c0};
  
  disp("pos_notes : d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1") %positive notes for desired from root
  disp("neg_notes : c0") %negative notes for desired from root
  
  disp("Enter the following lower-case values only: c0, cSharp, d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1")
  
  desired_detune = input('Enter the desired note to detune: '); 
  
  Num = input('Enter a Numerator for root to desired ratio: ');
  Den = input('Enter a Denominator for root to desired ratio: ');
  roottoDesired_ratiotocents = 1200*log2(Num/Den); %Ratio to cents values
  
switch(desired_detune)
  
  case rd_pos
  diff_value = desired_detune - root_note;         %Difference between root and desired
  pos_detunevalue_at_desired = roottoDesired_ratiotocents - diff_value 
  
  case rd_neg
  diff_value = desired_detune - root_note;         %Difference between root and desired
  grossdetune = roottoDesired_ratiotocents - diff_value;
  if (grossdetune > 0 && grossdetune < 100)
    neg_detunevalue_at_desired = grossdetune - 100
  endif
  if (grossdetune > 100 && grossdetune < 200)
    neg_detunevalue_at_desired = grossdetune - 200
  endif
  if (grossdetune > 200 && grossdetune < 300)
    neg_detunevalue_at_desired = grossdetune - 300
  endif
  if (grossdetune > 300 && grossdetune < 400)
    neg_detunevalue_at_desired = grossdetune - 400
  endif
  if (grossdetune > 400 && grossdetune < 500)
    neg_detunevalue_at_desired = grossdetune - 500
  endif
  if (grossdetune > 500 && grossdetune < 600)
    neg_detunevalue_at_desired = grossdetune - 600
  endif
  if (grossdetune > 600 && grossdetune < 700)
    neg_detunevalue_at_desired = grossdetune - 700
  endif
  if (grossdetune > 700 && grossdetune < 800)
    neg_detunevalue_at_desired = grossdetune - 800
  endif
  if (grossdetune > 800 && grossdetune < 900)
    neg_detunevalue_at_desired = grossdetune - 900
  endif
  if (grossdetune > 900 && grossdetune < 1000)
    neg_detunevalue_at_desired = grossdetune - 1000
  endif
  if (grossdetune > 1000 && grossdetune < 1100)
    neg_detunevalue_at_desired = grossdetune - 1100
  endif
  if (grossdetune > 1100 && grossdetune < 1200)
    neg_detunevalue_at_desired = grossdetune - 1200
  endif
endswitch

case D 
  rd_pos = {DSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1};
  rd_neg = {cSharp, c0};
  
  disp("pos_notes : DSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1") %positive notes for desired from root
  disp("neg_notes : cSharp, c0") %negative notes for desired from root
  
  disp("Enter the following lower-case values only: c0, cSharp, d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1")
  
  desired_detune = input('Enter the desired note to detune: '); 
  
  Num = input('Enter a Numerator for root to desired ratio: ');
  Den = input('Enter a Denominator for root to desired ratio: ');
  roottoDesired_ratiotocents = 1200*log2(Num/Den); %Ratio to cents values
  
switch(desired_detune)
  
  case rd_pos
  diff_value = desired_detune - root_note;         %Difference between root and desired
  pos_detunevalue_at_desired = roottoDesired_ratiotocents - diff_value 
  
  case rd_neg
  diff_value = desired_detune - root_note;         %Difference between root and desired
  grossdetune = roottoDesired_ratiotocents - diff_value;
  if (grossdetune > 0 && grossdetune < 100)
    neg_detunevalue_at_desired = grossdetune - 100
  endif
  if (grossdetune > 100 && grossdetune < 200)
    neg_detunevalue_at_desired = grossdetune - 200
  endif
  if (grossdetune > 200 && grossdetune < 300)
    neg_detunevalue_at_desired = grossdetune - 300
  endif
  if (grossdetune > 300 && grossdetune < 400)
    neg_detunevalue_at_desired = grossdetune - 400
  endif
  if (grossdetune > 400 && grossdetune < 500)
    neg_detunevalue_at_desired = grossdetune - 500
  endif
  if (grossdetune > 500 && grossdetune < 600)
    neg_detunevalue_at_desired = grossdetune - 600
  endif
  if (grossdetune > 600 && grossdetune < 700)
    neg_detunevalue_at_desired = grossdetune - 700
  endif
  if (grossdetune > 700 && grossdetune < 800)
    neg_detunevalue_at_desired = grossdetune - 800
  endif
  if (grossdetune > 800 && grossdetune < 900)
    neg_detunevalue_at_desired = grossdetune - 900
  endif
  if (grossdetune > 900 && grossdetune < 1000)
    neg_detunevalue_at_desired = grossdetune - 1000
  endif
  if (grossdetune > 1000 && grossdetune < 1100)
    neg_detunevalue_at_desired = grossdetune - 1100
  endif
  if (grossdetune > 1100 && grossdetune < 1200)
    neg_detunevalue_at_desired = grossdetune - 1200
  endif
endswitch

case DSharp 
  rd_pos = {e, f, fSharp, g, gSharp, a, aSharp, b, c1};
  rd_neg = {d, cSharp, c0};
  
  disp("pos_notes : e, f, fSharp, g, gSharp, a, aSharp, b, c1") %positive notes for desired from root
  disp("neg_notes : d , cSharp, c0") %negative notes for desired from root
  
  disp("Enter the following lower-case values only: c0, cSharp, d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1")
  
  desired_detune = input('Enter the desired note to detune: '); 
  
  Num = input('Enter a Numerator for root to desired ratio: ');
  Den = input('Enter a Denominator for root to desired ratio: ');
  roottoDesired_ratiotocents = 1200*log2(Num/Den); %Ratio to cents values
  
switch(desired_detune)
  
  case rd_pos
  diff_value = desired_detune - root_note;         %Difference between root and desired
  pos_detunevalue_at_desired = roottoDesired_ratiotocents - diff_value 
  
  case rd_neg
  diff_value = desired_detune - root_note;         %Difference between root and desired
  grossdetune = roottoDesired_ratiotocents - diff_value;
  if (grossdetune > 0 && grossdetune < 100)
    neg_detunevalue_at_desired = grossdetune - 100
  endif
  if (grossdetune > 100 && grossdetune < 200)
    neg_detunevalue_at_desired = grossdetune - 200
  endif
  if (grossdetune > 200 && grossdetune < 300)
    neg_detunevalue_at_desired = grossdetune - 300
  endif
  if (grossdetune > 300 && grossdetune < 400)
    neg_detunevalue_at_desired = grossdetune - 400
  endif
  if (grossdetune > 400 && grossdetune < 500)
    neg_detunevalue_at_desired = grossdetune - 500
  endif
  if (grossdetune > 500 && grossdetune < 600)
    neg_detunevalue_at_desired = grossdetune - 600
  endif
  if (grossdetune > 600 && grossdetune < 700)
    neg_detunevalue_at_desired = grossdetune - 700
  endif
  if (grossdetune > 700 && grossdetune < 800)
    neg_detunevalue_at_desired = grossdetune - 800
  endif
  if (grossdetune > 800 && grossdetune < 900)
    neg_detunevalue_at_desired = grossdetune - 900
  endif
  if (grossdetune > 900 && grossdetune < 1000)
    neg_detunevalue_at_desired = grossdetune - 1000
  endif
  if (grossdetune > 1000 && grossdetune < 1100)
    neg_detunevalue_at_desired = grossdetune - 1100
  endif
  if (grossdetune > 1100 && grossdetune < 1200)
    neg_detunevalue_at_desired = grossdetune - 1200
  endif
endswitch

case E 
  rd_pos = {f, fSharp, g, gSharp, a, aSharp, b, c1};
  rd_neg = {dSharp, d, cSharp, c0};
  
  disp("pos_notes : f, fSharp, g, gSharp, a, aSharp, b, c1") %positive notes for desired from root
  disp("neg_notes : dSharp, d , cSharp, c0") %negative notes for desired from root
  
  disp("Enter the following lower-case values only: c0, cSharp, d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1")
  
  desired_detune = input('Enter the desired note to detune: '); 
  
  Num = input('Enter a Numerator for root to desired ratio: ');
  Den = input('Enter a Denominator for root to desired ratio: ');
  roottoDesired_ratiotocents = 1200*log2(Num/Den); %Ratio to cents values
  
switch(desired_detune)
  
  case rd_pos
  diff_value = desired_detune - root_note;         %Difference between root and desired
  pos_detunevalue_at_desired = roottoDesired_ratiotocents - diff_value 
  
  case rd_neg
  diff_value = desired_detune - root_note;         %Difference between root and desired
  grossdetune = roottoDesired_ratiotocents - diff_value;
  if (grossdetune > 0 && grossdetune < 100)
    neg_detunevalue_at_desired = grossdetune - 100
  endif
  if (grossdetune > 100 && grossdetune < 200)
    neg_detunevalue_at_desired = grossdetune - 200
  endif
  if (grossdetune > 200 && grossdetune < 300)
    neg_detunevalue_at_desired = grossdetune - 300
  endif
  if (grossdetune > 300 && grossdetune < 400)
    neg_detunevalue_at_desired = grossdetune - 400
  endif
  if (grossdetune > 400 && grossdetune < 500)
    neg_detunevalue_at_desired = grossdetune - 500
  endif
  if (grossdetune > 500 && grossdetune < 600)
    neg_detunevalue_at_desired = grossdetune - 600
  endif
  if (grossdetune > 600 && grossdetune < 700)
    neg_detunevalue_at_desired = grossdetune - 700
  endif
  if (grossdetune > 700 && grossdetune < 800)
    neg_detunevalue_at_desired = grossdetune - 800
  endif
  if (grossdetune > 800 && grossdetune < 900)
    neg_detunevalue_at_desired = grossdetune - 900
  endif
  if (grossdetune > 900 && grossdetune < 1000)
    neg_detunevalue_at_desired = grossdetune - 1000
  endif
  if (grossdetune > 1000 && grossdetune < 1100)
    neg_detunevalue_at_desired = grossdetune - 1100
  endif
  if (grossdetune > 1100 && grossdetune < 1200)
    neg_detunevalue_at_desired = grossdetune - 1200
  endif
endswitch

case F 
  rd_pos = {fSharp, g, gSharp, a, aSharp, b, c1};
  rd_neg = {e, dSharp, d, cSharp, c0};
  
  disp("pos_notes : fSharp, g, gSharp, a, aSharp, b, c1") %positive notes for desired from root
  disp("neg_notes : e, dSharp, d , cSharp, c0") %negative notes for desired from root
  
  disp("Enter the following lower-case values only: c0, cSharp, d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1")
  
  desired_detune = input('Enter the desired note to detune: '); 
  
  Num = input('Enter a Numerator for root to desired ratio: ');
  Den = input('Enter a Denominator for root to desired ratio: ');
  roottoDesired_ratiotocents = 1200*log2(Num/Den); %Ratio to cents values
  
switch(desired_detune)
  
  case rd_pos
  diff_value = desired_detune - root_note;         %Difference between root and desired
  pos_detunevalue_at_desired = roottoDesired_ratiotocents - diff_value 
  
  case rd_neg
  diff_value = desired_detune - root_note;         %Difference between root and desired
  grossdetune = roottoDesired_ratiotocents - diff_value;
  if (grossdetune > 0 && grossdetune < 100)
    neg_detunevalue_at_desired = grossdetune - 100
  endif
  if (grossdetune > 100 && grossdetune < 200)
    neg_detunevalue_at_desired = grossdetune - 200
  endif
  if (grossdetune > 200 && grossdetune < 300)
    neg_detunevalue_at_desired = grossdetune - 300
  endif
  if (grossdetune > 300 && grossdetune < 400)
    neg_detunevalue_at_desired = grossdetune - 400
  endif
  if (grossdetune > 400 && grossdetune < 500)
    neg_detunevalue_at_desired = grossdetune - 500
  endif
  if (grossdetune > 500 && grossdetune < 600)
    neg_detunevalue_at_desired = grossdetune - 600
  endif
  if (grossdetune > 600 && grossdetune < 700)
    neg_detunevalue_at_desired = grossdetune - 700
  endif
  if (grossdetune > 700 && grossdetune < 800)
    neg_detunevalue_at_desired = grossdetune - 800
  endif
  if (grossdetune > 800 && grossdetune < 900)
    neg_detunevalue_at_desired = grossdetune - 900
  endif
  if (grossdetune > 900 && grossdetune < 1000)
    neg_detunevalue_at_desired = grossdetune - 1000
  endif
  if (grossdetune > 1000 && grossdetune < 1100)
    neg_detunevalue_at_desired = grossdetune - 1100
  endif
  if (grossdetune > 1100 && grossdetune < 1200)
    neg_detunevalue_at_desired = grossdetune - 1200
  endif
endswitch

case FSharp 
  rd_pos = {g, gSharp, a, aSharp, b, c1};
  rd_neg = {f, e, dSharp, d, cSharp, c0};
  
  disp("pos_notes : g, gSharp, a, aSharp, b, c1") %positive notes for desired from root
  disp("neg_notes : f, e, dSharp, d , cSharp, c0") %negative notes for desired from root
  
  disp("Enter the following lower-case values only: c0, cSharp, d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1")
  
  desired_detune = input('Enter the desired note to detune: '); 
  
  Num = input('Enter a Numerator for root to desired ratio: ');
  Den = input('Enter a Denominator for root to desired ratio: ');
  roottoDesired_ratiotocents = 1200*log2(Num/Den); %Ratio to cents values
  
switch(desired_detune)
  
  case rd_pos
  diff_value = desired_detune - root_note;         %Difference between root and desired
  pos_detunevalue_at_desired = roottoDesired_ratiotocents - diff_value 
  
  case rd_neg
  diff_value = desired_detune - root_note;         %Difference between root and desired
  grossdetune = roottoDesired_ratiotocents - diff_value;
  if (grossdetune > 0 && grossdetune < 100)
    neg_detunevalue_at_desired = grossdetune - 100
  endif
  if (grossdetune > 100 && grossdetune < 200)
    neg_detunevalue_at_desired = grossdetune - 200
  endif
  if (grossdetune > 200 && grossdetune < 300)
    neg_detunevalue_at_desired = grossdetune - 300
  endif
  if (grossdetune > 300 && grossdetune < 400)
    neg_detunevalue_at_desired = grossdetune - 400
  endif
  if (grossdetune > 400 && grossdetune < 500)
    neg_detunevalue_at_desired = grossdetune - 500
  endif
  if (grossdetune > 500 && grossdetune < 600)
    neg_detunevalue_at_desired = grossdetune - 600
  endif
  if (grossdetune > 600 && grossdetune < 700)
    neg_detunevalue_at_desired = grossdetune - 700
  endif
  if (grossdetune > 700 && grossdetune < 800)
    neg_detunevalue_at_desired = grossdetune - 800
  endif
  if (grossdetune > 800 && grossdetune < 900)
    neg_detunevalue_at_desired = grossdetune - 900
  endif
  if (grossdetune > 900 && grossdetune < 1000)
    neg_detunevalue_at_desired = grossdetune - 1000
  endif
  if (grossdetune > 1000 && grossdetune < 1100)
    neg_detunevalue_at_desired = grossdetune - 1100
  endif
  if (grossdetune > 1100 && grossdetune < 1200)
    neg_detunevalue_at_desired = grossdetune - 1200
  endif
endswitch

case G 
  rd_pos = {gSharp, a, aSharp, b, c1};
  rd_neg = {fSharp, f, e, dSharp, d, cSharp, c0};
  
  disp("pos_notes : gSharp, a, aSharp, b, c1") %positive notes for desired from root
  disp("neg_notes : fSharp, f, e, dSharp, d , cSharp, c0") %negative notes for desired from root
  
  disp("Enter the following lower-case values only: c0, cSharp, d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1")
  
  desired_detune = input('Enter the desired note to detune: '); 
  
  Num = input('Enter a Numerator for root to desired ratio: ');
  Den = input('Enter a Denominator for root to desired ratio: ');
  roottoDesired_ratiotocents = 1200*log2(Num/Den); %Ratio to cents values
  
switch(desired_detune)
  
  case rd_pos
  diff_value = desired_detune - root_note;         %Difference between root and desired
  pos_detunevalue_at_desired = roottoDesired_ratiotocents - diff_value 
  
  case rd_neg
  diff_value = desired_detune - root_note;         %Difference between root and desired
  grossdetune = roottoDesired_ratiotocents - diff_value;
  if (grossdetune > 0 && grossdetune < 100)
    neg_detunevalue_at_desired = grossdetune - 100
  endif
  if (grossdetune > 100 && grossdetune < 200)
    neg_detunevalue_at_desired = grossdetune - 200
  endif
  if (grossdetune > 200 && grossdetune < 300)
    neg_detunevalue_at_desired = grossdetune - 300
  endif
  if (grossdetune > 300 && grossdetune < 400)
    neg_detunevalue_at_desired = grossdetune - 400
  endif
  if (grossdetune > 400 && grossdetune < 500)
    neg_detunevalue_at_desired = grossdetune - 500
  endif
  if (grossdetune > 500 && grossdetune < 600)
    neg_detunevalue_at_desired = grossdetune - 600
  endif
  if (grossdetune > 600 && grossdetune < 700)
    neg_detunevalue_at_desired = grossdetune - 700
  endif
  if (grossdetune > 700 && grossdetune < 800)
    neg_detunevalue_at_desired = grossdetune - 800
  endif
  if (grossdetune > 800 && grossdetune < 900)
    neg_detunevalue_at_desired = grossdetune - 900
  endif
  if (grossdetune > 900 && grossdetune < 1000)
    neg_detunevalue_at_desired = grossdetune - 1000
  endif
  if (grossdetune > 1000 && grossdetune < 1100)
    neg_detunevalue_at_desired = grossdetune - 1100
  endif
  if (grossdetune > 1100 && grossdetune < 1200)
    neg_detunevalue_at_desired = grossdetune - 1200
  endif
endswitch

case GSharp 
  rd_pos = {a, aSharp, b, c1};
  rd_neg = {g, fSharp, f, e, dSharp, d, cSharp, c0};
  
  disp("pos_notes : a, aSharp, b, c1") %positive notes for desired from root
  disp("neg_notes : g, fSharp, f, e, dSharp, d, cSharp, c0") %negative notes for desired from root
  
  disp("Enter the following lower-case values only: c0, cSharp, d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1")
  
  desired_detune = input('Enter the desired note to detune: '); 
  
  Num = input('Enter a Numerator for root to desired ratio: ');
  Den = input('Enter a Denominator for root to desired ratio: ');
  roottoDesired_ratiotocents = 1200*log2(Num/Den); %Ratio to cents values
  
switch(desired_detune)
  
  case rd_pos
  diff_value = desired_detune - root_note;         %Difference between root and desired
  pos_detunevalue_at_desired = roottoDesired_ratiotocents - diff_value 
  
  case rd_neg
  diff_value = desired_detune - root_note;         %Difference between root and desired
  grossdetune = roottoDesired_ratiotocents - diff_value;
  if (grossdetune > 0 && grossdetune < 100)
    neg_detunevalue_at_desired = grossdetune - 100
  endif
  if (grossdetune > 100 && grossdetune < 200)
    neg_detunevalue_at_desired = grossdetune - 200
  endif
  if (grossdetune > 200 && grossdetune < 300)
    neg_detunevalue_at_desired = grossdetune - 300
  endif
  if (grossdetune > 300 && grossdetune < 400)
    neg_detunevalue_at_desired = grossdetune - 400
  endif
  if (grossdetune > 400 && grossdetune < 500)
    neg_detunevalue_at_desired = grossdetune - 500
  endif
  if (grossdetune > 500 && grossdetune < 600)
    neg_detunevalue_at_desired = grossdetune - 600
  endif
  if (grossdetune > 600 && grossdetune < 700)
    neg_detunevalue_at_desired = grossdetune - 700
  endif
  if (grossdetune > 700 && grossdetune < 800)
    neg_detunevalue_at_desired = grossdetune - 800
  endif
  if (grossdetune > 800 && grossdetune < 900)
    neg_detunevalue_at_desired = grossdetune - 900
  endif
  if (grossdetune > 900 && grossdetune < 1000)
    neg_detunevalue_at_desired = grossdetune - 1000
  endif
  if (grossdetune > 1000 && grossdetune < 1100)
    neg_detunevalue_at_desired = grossdetune - 1100
  endif
  if (grossdetune > 1100 && grossdetune < 1200)
    neg_detunevalue_at_desired = grossdetune - 1200
  endif
endswitch

case A
  rd_pos = {aSharp, b, c1};
  rd_neg = {gSharp, g, fSharp, f, e, dSharp, d, cSharp, c0};
  
  disp("pos_notes : aSharp, b, c1") %positive notes for desired from root
  disp("neg_notes : gSharp, g, fSharp, f, e, dSharp, d, cSharp, c0") %negative notes for desired from root
  
  disp("Enter the following lower-case values only: c0, cSharp, d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1")
  
  desired_detune = input('Enter the desired note to detune: '); 
  
  Num = input('Enter a Numerator for root to desired ratio: ');
  Den = input('Enter a Denominator for root to desired ratio: ');
  roottoDesired_ratiotocents = 1200*log2(Num/Den); %Ratio to cents values
  
switch(desired_detune)
  
  case rd_pos
  diff_value = desired_detune - root_note;         %Difference between root and desired
  pos_detunevalue_at_desired = roottoDesired_ratiotocents - diff_value 
  
  case rd_neg
  diff_value = desired_detune - root_note;         %Difference between root and desired
  grossdetune = roottoDesired_ratiotocents - diff_value;
  if (grossdetune > 0 && grossdetune < 100)
    neg_detunevalue_at_desired = grossdetune - 100
  endif
  if (grossdetune > 100 && grossdetune < 200)
    neg_detunevalue_at_desired = grossdetune - 200
  endif
  if (grossdetune > 200 && grossdetune < 300)
    neg_detunevalue_at_desired = grossdetune - 300
  endif
  if (grossdetune > 300 && grossdetune < 400)
    neg_detunevalue_at_desired = grossdetune - 400
  endif
  if (grossdetune > 400 && grossdetune < 500)
    neg_detunevalue_at_desired = grossdetune - 500
  endif
  if (grossdetune > 500 && grossdetune < 600)
    neg_detunevalue_at_desired = grossdetune - 600
  endif
  if (grossdetune > 600 && grossdetune < 700)
    neg_detunevalue_at_desired = grossdetune - 700
  endif
  if (grossdetune > 700 && grossdetune < 800)
    neg_detunevalue_at_desired = grossdetune - 800
  endif
  if (grossdetune > 800 && grossdetune < 900)
    neg_detunevalue_at_desired = grossdetune - 900
  endif
  if (grossdetune > 900 && grossdetune < 1000)
    neg_detunevalue_at_desired = grossdetune - 1000
  endif
  if (grossdetune > 1000 && grossdetune < 1100)
    neg_detunevalue_at_desired = grossdetune - 1100
  endif
  if (grossdetune > 1100 && grossdetune < 1200)
    neg_detunevalue_at_desired = grossdetune - 1200
  endif
endswitch

case ASharp
  rd_pos = {b, c1};
  rd_neg = {a, gSharp, g, fSharp, f, e, dSharp, d, cSharp, c0};
  
  disp("pos_notes : b, c1") %positive notes for desired from root
  disp("neg_notes : a, gSharp, g, fSharp, f, e, dSharp, d, cSharp, c0") %negative notes for desired from root
  
  disp("Enter the following lower-case values only: c0, cSharp, d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1")
  
  desired_detune = input('Enter the desired note to detune: '); 
  
  Num = input('Enter a Numerator for root to desired ratio: ');
  Den = input('Enter a Denominator for root to desired ratio: ');
  roottoDesired_ratiotocents = 1200*log2(Num/Den); %Ratio to cents values
  
switch(desired_detune)
  
  case rd_pos
  diff_value = desired_detune - root_note;         %Difference between root and desired
  pos_detunevalue_at_desired = roottoDesired_ratiotocents - diff_value 
  
  case rd_neg
  diff_value = desired_detune - root_note;         %Difference between root and desired
  grossdetune = roottoDesired_ratiotocents - diff_value;
  if (grossdetune > 0 && grossdetune < 100)
    neg_detunevalue_at_desired = grossdetune - 100
  endif
  if (grossdetune > 100 && grossdetune < 200)
    neg_detunevalue_at_desired = grossdetune - 200
  endif
  if (grossdetune > 200 && grossdetune < 300)
    neg_detunevalue_at_desired = grossdetune - 300
  endif
  if (grossdetune > 300 && grossdetune < 400)
    neg_detunevalue_at_desired = grossdetune - 400
  endif
  if (grossdetune > 400 && grossdetune < 500)
    neg_detunevalue_at_desired = grossdetune - 500
  endif
  if (grossdetune > 500 && grossdetune < 600)
    neg_detunevalue_at_desired = grossdetune - 600
  endif
  if (grossdetune > 600 && grossdetune < 700)
    neg_detunevalue_at_desired = grossdetune - 700
  endif
  if (grossdetune > 700 && grossdetune < 800)
    neg_detunevalue_at_desired = grossdetune - 800
  endif
  if (grossdetune > 800 && grossdetune < 900)
    neg_detunevalue_at_desired = grossdetune - 900
  endif
  if (grossdetune > 900 && grossdetune < 1000)
    neg_detunevalue_at_desired = grossdetune - 1000
  endif
  if (grossdetune > 1000 && grossdetune < 1100)
    neg_detunevalue_at_desired = grossdetune - 1100
  endif
  if (grossdetune > 1100 && grossdetune < 1200)
    neg_detunevalue_at_desired = grossdetune - 1200
  endif
endswitch

case B
  rd_pos = {c1};
  rd_neg = {aSharp, a, gSharp, g, fSharp, f, e, dSharp, d, cSharp, c0};
  
  disp("pos_notes : c1") %positive notes for desired from root
  disp("neg_notes : aSharp, a, gSharp, g, fSharp, f, e, dSharp, d, cSharp, c0") %negative notes for desired from root
  
  disp("Enter the following lower-case values only: c0, cSharp, d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1")
  
  desired_detune = input('Enter the desired note to detune: '); 
  
  Num = input('Enter a Numerator for root to desired ratio: ');
  Den = input('Enter a Denominator for root to desired ratio: ');
  roottoDesired_ratiotocents = 1200*log2(Num/Den); %Ratio to cents values
  
switch(desired_detune)
  
  case rd_pos
  diff_value = desired_detune - root_note;         %Difference between root and desired
  pos_detunevalue_at_desired = roottoDesired_ratiotocents - diff_value 
  
  case rd_neg
  diff_value = desired_detune - root_note;         %Difference between root and desired
  grossdetune = roottoDesired_ratiotocents - diff_value;
  if (grossdetune > 0 && grossdetune < 100)
    neg_detunevalue_at_desired = grossdetune - 100
  endif
  if (grossdetune > 100 && grossdetune < 200)
    neg_detunevalue_at_desired = grossdetune - 200
  endif
  if (grossdetune > 200 && grossdetune < 300)
    neg_detunevalue_at_desired = grossdetune - 300
  endif
  if (grossdetune > 300 && grossdetune < 400)
    neg_detunevalue_at_desired = grossdetune - 400
  endif
  if (grossdetune > 400 && grossdetune < 500)
    neg_detunevalue_at_desired = grossdetune - 500
  endif
  if (grossdetune > 500 && grossdetune < 600)
    neg_detunevalue_at_desired = grossdetune - 600
  endif
  if (grossdetune > 600 && grossdetune < 700)
    neg_detunevalue_at_desired = grossdetune - 700
  endif
  if (grossdetune > 700 && grossdetune < 800)
    neg_detunevalue_at_desired = grossdetune - 800
  endif
  if (grossdetune > 800 && grossdetune < 900)
    neg_detunevalue_at_desired = grossdetune - 900
  endif
  if (grossdetune > 900 && grossdetune < 1000)
    neg_detunevalue_at_desired = grossdetune - 1000
  endif
  if (grossdetune > 1000 && grossdetune < 1100)
    neg_detunevalue_at_desired = grossdetune - 1100
  endif
  if (grossdetune > 1100 && grossdetune < 1200)
    neg_detunevalue_at_desired = grossdetune - 1200
  endif
endswitch

case C1
  rd_neg = {b, aSharp, a, gSharp, g, fSharp, f, e, dSharp, d, cSharp, c0};
  
  disp("neg_notes : b, aSharp, a, gSharp, g, fSharp, f, e, dSharp, d, cSharp, c0") %negative notes for desired from root
  
  disp("Enter the following lower-case values only: c0, cSharp, d, dSharp, e, f, fSharp, g, gSharp, a, aSharp, b, c1")
  
  desired_detune = input('Enter the desired note to detune: '); 
  
  Num = input('Enter a Numerator for root to desired ratio: ');
  Den = input('Enter a Denominator for root to desired ratio: ');
  roottoDesired_ratiotocents = 1200*log2(Num/Den); %Ratio to cents values
  
switch(desired_detune)
  
  case rd_pos
  diff_value = desired_detune - root_note;         %Difference between root and desired
  pos_detunevalue_at_desired = roottoDesired_ratiotocents - diff_value 
  
  case rd_neg
  diff_value = desired_detune - root_note;         %Difference between root and desired
  grossdetune = roottoDesired_ratiotocents - diff_value;
  if (grossdetune > 0 && grossdetune < 100)
    neg_detunevalue_at_desired = grossdetune - 100
  endif
  if (grossdetune > 100 && grossdetune < 200)
    neg_detunevalue_at_desired = grossdetune - 200
  endif
  if (grossdetune > 200 && grossdetune < 300)
    neg_detunevalue_at_desired = grossdetune - 300
  endif
  if (grossdetune > 300 && grossdetune < 400)
    neg_detunevalue_at_desired = grossdetune - 400
  endif
  if (grossdetune > 400 && grossdetune < 500)
    neg_detunevalue_at_desired = grossdetune - 500
  endif
  if (grossdetune > 500 && grossdetune < 600)
    neg_detunevalue_at_desired = grossdetune - 600
  endif
  if (grossdetune > 600 && grossdetune < 700)
    neg_detunevalue_at_desired = grossdetune - 700
  endif
  if (grossdetune > 700 && grossdetune < 800)
    neg_detunevalue_at_desired = grossdetune - 800
  endif
  if (grossdetune > 800 && grossdetune < 900)
    neg_detunevalue_at_desired = grossdetune - 900
  endif
  if (grossdetune > 900 && grossdetune < 1000)
    neg_detunevalue_at_desired = grossdetune - 1000
  endif
  if (grossdetune > 1000 && grossdetune < 1100)
    neg_detunevalue_at_desired = grossdetune - 1100
  endif
  if (grossdetune > 1100 && grossdetune < 1200)
    neg_detunevalue_at_desired = grossdetune - 1200
  endif
endswitch
endswitch

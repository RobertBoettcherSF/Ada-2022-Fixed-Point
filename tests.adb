pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Fixed_Demo; use Fixed_Demo;

procedure Tests is
   A : constant Money := 10.50;
   B : constant Money := 2.25;
   D1 : constant Decimal_Money := 100.10;
   D2 : constant Decimal_Money := 0.05;
begin
   Assert (Add (A, B) = 12.75);
   Assert (Scale (A, 2) = 21.00);
   Assert (abs (To_Float (A) - 10.50) < 0.001);
   Put_Line ("PASS ordinary fixed Money ops");

   Assert (Delta_Of_Money = 0.01);  -- Small forced = Delta
   Assert (abs (Float (Delta_Of_Decimal) - 0.01) < 1.0E-9);
   Put_Line ("PASS 'Delta attribute");

   Assert (Add_Dec (D1, D2) = 100.15);
   Put_Line ("PASS decimal fixed Add");

   Put_Line ("All Fixed-Point topic tests passed.");
end Tests;

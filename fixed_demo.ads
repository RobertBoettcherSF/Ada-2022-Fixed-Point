--  Ada 2022 topic: ordinary and decimal fixed-point types.
pragma Ada_2022;

package Fixed_Demo is

   --  Ordinary fixed: delta 0.01, range enough for small money-like values.
   type Money is delta 0.01 range -1_000_000.0 .. 1_000_000.0
     with Small => 0.01;

   --  Decimal fixed: digits + delta (banking-style).
   type Decimal_Money is delta 0.01 digits 10;

   function Add (A, B : Money) return Money;
   function Scale (M : Money; Factor : Integer) return Money;
   function To_Float (M : Money) return Float;

   function Add_Dec (A, B : Decimal_Money) return Decimal_Money;
   function Delta_Of_Money return Money;
   function Delta_Of_Decimal return Decimal_Money;

end Fixed_Demo;

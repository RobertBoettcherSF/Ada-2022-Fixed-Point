pragma Ada_2022;

package body Fixed_Demo is

   function Add (A, B : Money) return Money is
   begin
      return A + B;
   end Add;

   function Scale (M : Money; Factor : Integer) return Money is
   begin
      return M * Factor;
   end Scale;

   function To_Float (M : Money) return Float is
   begin
      return Float (M);
   end To_Float;

   function Add_Dec (A, B : Decimal_Money) return Decimal_Money is
   begin
      return A + B;
   end Add_Dec;

   function Delta_Of_Money return Money is
   begin
      return Money'Delta;
   end Delta_Of_Money;

   function Delta_Of_Decimal return Decimal_Money is
   begin
      return Decimal_Money'Delta;
   end Delta_Of_Decimal;

end Fixed_Demo;

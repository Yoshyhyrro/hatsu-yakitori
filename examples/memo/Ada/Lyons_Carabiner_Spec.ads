pragma SPARK_Mode (On);
with Ada.Numerics.Generic_Elementary_Functions;

package Lyons_Carabiner is

   type Lyons_Weight is (L0, L1, L2, L3, L4, L5, L6);
   type Rudvalis_Weight is (R0, R1, R2, R3, R4, R5, R6);
   --  Same Hamming heights: 0 .. 6

   type Phase_Mod_7  is mod 7;
   type Phase_Mod_29 is mod 29;

   type Space_Tag is (Affine, Hybrid, Banach);

   type Resolution_Level is (Lyons, Higman_Sims, Rudvalis);
   --  Corresponds to Fin 3: 0,1,2

   function Phantom_Count (Level : Resolution_Level) return Natural;
   function Inverse_Heegner_Dim (Level : Resolution_Level) return Natural;

   function Lyons_Orbit_Size (W : Lyons_Weight) return Natural;
   function Rudvalis_Orbit_Size (W : Rudvalis_Weight) return Natural;

   -- Ada does not allow reusing the same component name for different types
   -- across variants, so they are explicitly named _L and _R.
   type Carabiner (Level : Resolution_Level) is record
      case Level is
         when Lyons =>
            Weight_L : Lyons_Weight;
            Phase_L  : Phase_Mod_7;
         when Higman_Sims | Rudvalis =>
            Weight_R : Rudvalis_Weight;
            Phase_R  : Phase_Mod_29;
      end case;
   end record;

   function Complement (C : Carabiner) return Carabiner;
   function Rotate (C : Carabiner) return Carabiner;

   --  Verschiebung operator lowers resolution level.
   --  SPARK Contract guarantees it is never called on Rudvalis.
   function Verschiebung (C : Carabiner) return Carabiner
     with Pre  => C.Level /= Rudvalis,
          Post => Verschiebung'Result.Level = (if C.Level = Lyons then Higman_Sims else Rudvalis);

   function Route_Holonomy (Level : Resolution_Level) return Natural;

   --  The three obstruction values.
   --  Dynamic_Predicate ensures mathematical consistency of the MDS code:
   --  Braid_Deficit (n+d) = Phantom_Coupling (d) + Holonomy_Defect (k) + 2
   --  (Derived from n = k + d - 1 for generalized MDS-like relations)
   type Obstruction_Triple is record
      Phantom_Coupling : Natural; -- d = 3
      Holonomy_Defect  : Natural; -- k = 4
      Braid_Deficit    : Natural; -- n + d = 9
   end record
     with Dynamic_Predicate =>
       Obstruction_Triple.Braid_Deficit =
       Obstruction_Triple.Phantom_Coupling + Obstruction_Triple.Holonomy_Defect + 2;

   function Lyons_Obstruction return Obstruction_Triple;

   --  Defined explicit record type for function return.
   type Code_Params is record
      Length   : Natural;
      Dim      : Natural;
      MinDist  : Natural;
      Alphabet : Natural;
   end record;

   function Code_Parameters (Obs : Obstruction_Triple) return Code_Params;

   --  Inverse Heegner space
   type Inverse_Heegner_Vector is array (1 .. 20) of Long_Float;
   type Long_Float_Matrix is array (1 .. 20, 1 .. 20) of Long_Float;

   function Glue_Matrix return Long_Float_Matrix;

   --  BSD rank deficiency
   --  Predicate ensures that Phantom_Contribution exactly equals the rank gap.
   type BSD_Rank_Deficiency is record
      Analytic_Rank        : Natural;
      Algebraic_Rank       : Natural;
      Phantom_Contribution : Natural;
   end record
     with Dynamic_Predicate =>
       BSD_Rank_Deficiency.Algebraic_Rank >= BSD_Rank_Deficiency.Analytic_Rank and then
       BSD_Rank_Deficiency.Phantom_Contribution =
       (BSD_Rank_Deficiency.Algebraic_Rank - BSD_Rank_Deficiency.Analytic_Rank);

   function Compute_BSD_Deficiency (Level : Resolution_Level)
      return BSD_Rank_Deficiency;

   function Apply_Theta (X : Inverse_Heegner_Vector) return Inverse_Heegner_Vector;

end Lyons_Carabiner;

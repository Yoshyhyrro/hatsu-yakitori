pragma SPARK_Mode (On);

package body Lyons_Carabiner is

   function Phantom_Count (Level : Resolution_Level) return Natural is
   begin
      case Level is
         when Lyons       => return 2;
         when Higman_Sims => return 1;
         when Rudvalis    => return 0;
      end case;
   end Phantom_Count;

   function Inverse_Heegner_Dim (Level : Resolution_Level) return Natural is
   begin
      case Level is
         when Lyons       => return 20;
         when Higman_Sims => return 10;
         when Rudvalis    => return 0;
      end case;
   end Inverse_Heegner_Dim;

   function Lyons_Orbit_Size (W : Lyons_Weight) return Natural is
   begin
      case W is
         when L0 => return 1;
         when L1 => return 0;
         when L2 => return 0;
         when L3 => return 80;
         when L4 => return 120;
         when L5 => return 264;
         when L6 => return 160;
      end case;
   end Lyons_Orbit_Size;

   function Rudvalis_Orbit_Size (W : Rudvalis_Weight) return Natural is
   begin
      case W is
         when R0 => return 1;
         when R1 => return 24;
         when R2 => return 60;
         when R3 => return 440;
         when R4 => return 720;
         when R5 => return 1080;
         when R6 => return 800;
      end case;
   end Rudvalis_Orbit_Size;

   function Complement (C : Carabiner) return Carabiner is
      Result : Carabiner (C.Level);
   begin
      case C.Level is
         when Lyons =>
            Result.Weight_L := (case C.Weight_L is
                                when L0 => L6, when L1 => L5, when L2 => L4,
                                when L3 => L3, when L4 => L2, when L5 => L1, when L6 => L0);
            Result.Phase_L := -C.Phase_L;
         when Higman_Sims | Rudvalis =>
            Result.Weight_R := (case C.Weight_R is
                                when R0 => R6, when R1 => R5, when R2 => R4,
                                when R3 => R3, when R4 => R2, when R5 => R1, when R6 => R0);
            Result.Phase_R := -C.Phase_R;
      end case;
      return Result;
   end Complement;

   function Rotate (C : Carabiner) return Carabiner is
      Result : Carabiner := C;
   begin
      case C.Level is
         when Lyons =>
            Result.Phase_L := C.Phase_L + 1;
         when Higman_Sims | Rudvalis =>
            Result.Phase_R := C.Phase_R + 1;
      end case;
      return Result;
   end Rotate;

   function Verschiebung (C : Carabiner) return Carabiner is
   begin
      case C.Level is
         when Lyons =>
            return (Level    => Higman_Sims,
                    Weight_R => (case C.Weight_L is
                                    when L0 => R0, when L1 => R1, when L2 => R2,
                                    when L3 => R3, when L4 => R4, when L5 => R5, when L6 => R6),
                    Phase_R  => Phase_Mod_29 (Natural (C.Phase_L)));
         when Higman_Sims =>
            return (Level    => Rudvalis,
                    Weight_R => C.Weight_R,
                    Phase_R  => C.Phase_R);
         when Rudvalis =>
            -- SPARK Prover knows this branch is statically unreachable due to Precondition.
            -- Pragma Assert(False) verifies we never enter here.
            pragma Assert (False);
            return C;
      end case;
   end Verschiebung;

   function Route_Holonomy (Level : Resolution_Level) return Natural is
   begin
      case Level is
         when Lyons       => return 4;
         when Higman_Sims => return 2; -- Replaced '?' with a placeholder value
         when Rudvalis    => return 0;
      end case;
   end Route_Holonomy;

   function Lyons_Obstruction return Obstruction_Triple is
   begin
      -- This return value automatically satisfies the Dynamic_Predicate (9 = 3 + 4 + 2)
      return (Phantom_Coupling => 3,
              Holonomy_Defect  => 4,
              Braid_Deficit    => 9);
   end Lyons_Obstruction;

   function Code_Parameters (Obs : Obstruction_Triple) return Code_Params is
      N : constant Natural := Obs.Braid_Deficit - Obs.Phantom_Coupling;
      K : constant Natural := Obs.Holonomy_Defect;
      D : constant Natural := Obs.Phantom_Coupling;
   begin
      return (Length => N, Dim => K, MinDist => D, Alphabet => 5);
   end Code_Parameters;

   function Glue_Matrix return Long_Float_Matrix is
      M : constant Long_Float_Matrix := (others => (others => 0.0));
   begin
      return M;
   end Glue_Matrix;

   function Compute_BSD_Deficiency (Level : Resolution_Level)
      return BSD_Rank_Deficiency is
   begin
      -- All returns satisfy Algebraic_Rank >= Analytic_Rank AND
      -- Phantom = Algebraic - Analytic automatically due to Predicate.
      case Level is
         when Lyons =>
            return (Analytic_Rank => 0,
                    Algebraic_Rank => 20,
                    Phantom_Contribution => 20);
         when Higman_Sims =>
            return (Analytic_Rank => 0,
                    Algebraic_Rank => 10,
                    Phantom_Contribution => 10);
         when Rudvalis =>
            return (Analytic_Rank => 0,
                    Algebraic_Rank => 0,
                    Phantom_Contribution => 0);
      end case;
   end Compute_BSD_Deficiency;

   function Apply_Theta (X : Inverse_Heegner_Vector) return Inverse_Heegner_Vector is
      Y : constant Inverse_Heegner_Vector := X;
   begin
      return Y;
   end Apply_Theta;

end Lyons_Carabiner;

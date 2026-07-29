import CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.SakaiRadonNikodym

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure TomitaTakesakiModularPackage {A : AdmissibleClass}
    (S : SakaiRadonNikodymPackage A) where
  modularOperator : Type u
  modularAutomorphismGroup : A.wAlgebra.carrier → ℝ → A.wAlgebra.carrier
  modularOperatorClosed : Prop
  modularAutomorphismGroupClosed : Prop

structure TomitaTakesakiModularEvidence {A : AdmissibleClass}
    {S : SakaiRadonNikodymPackage A} (T : TomitaTakesakiModularPackage S) where
  modularOperatorClosedClosed : T.modularOperatorClosed
  modularAutomorphismGroupClosedClosed : T.modularAutomorphismGroupClosed

def TomitaTakesakiModularClosed {A : AdmissibleClass}
    {S : SakaiRadonNikodymPackage A} (T : TomitaTakesakiModularPackage S) : Prop :=
  T.modularOperatorClosed ∧ T.modularAutomorphismGroupClosed

theorem tomita_takesaki_modular_closed_from_evidence
    {A : AdmissibleClass} {S : SakaiRadonNikodymPackage A}
    (T : TomitaTakesakiModularPackage S) (E : TomitaTakesakiModularEvidence T) :
    TomitaTakesakiModularClosed T := by
  exact And.intro E.modularOperatorClosedClosed E.modularAutomorphismGroupClosedClosed

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
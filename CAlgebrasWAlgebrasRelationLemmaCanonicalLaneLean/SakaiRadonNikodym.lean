import CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure SakaiRadonNikodymPackage (A : AdmissibleClass) where
  weight : A.wAlgebra.carrier → ℝ
  normalSemiFiniteFaithful : Prop
  radonNikodymDerivativeExists : Prop

structure SakaiRadonNikodymEvidence {A : AdmissibleClass} (S : SakaiRadonNikodymPackage A) where
  normalSemiFiniteFaithfulClosed : S.normalSemiFiniteFaithful
  radonNikodymDerivativeExistsClosed : S.radonNikodymDerivativeExists

def SakaiRadonNikodymClosed {A : AdmissibleClass} (S : SakaiRadonNikodymPackage A) : Prop :=
  S.normalSemiFiniteFaithful ∧ S.radonNikodymDerivativeExists

theorem sakai_radon_nikodym_closed_from_evidence
    {A : AdmissibleClass} (S : SakaiRadonNikodymPackage A)
    (E : SakaiRadonNikodymEvidence S) : SakaiRadonNikodymClosed S := by
  exact And.intro E.normalSemiFiniteFaithfulClosed E.radonNikodymDerivativeExistsClosed

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
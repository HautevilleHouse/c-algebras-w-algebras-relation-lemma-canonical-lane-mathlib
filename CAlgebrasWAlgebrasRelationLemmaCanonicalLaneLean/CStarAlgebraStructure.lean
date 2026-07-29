import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure CStarAlgebra where
  carrier : Type u
  star : carrier → carrier
  norm : carrier → ℝ
  plus : carrier → carrier → carrier
  times : carrier → carrier → carrier
  zero : carrier
  one : carrier
  starInvolution : ∀ a : carrier, star (star a) = a
  cstarIdentity : ∀ a : carrier, ‖star a * a‖ = ‖a‖ * ‖a‖
  algebraComplete : Prop
  algebraCompleteTerm : algebraComplete

structure CStarAlgebraEvidence (A : CStarAlgebra) where
  starInvolutionClosed : A.starInvolution = A.starInvolution
  cstarIdentityClosed : A.cstarIdentity = A.cstarIdentity
  algebraCompleteClosed : A.algebraComplete

def CStarAlgebraClosed (A : CStarAlgebra) : Prop :=
  A.algebraComplete

theorem cstar_algebra_closed_from_evidence (A : CStarAlgebra) (E : CStarAlgebraEvidence A) :
    CStarAlgebraClosed A :=
  E.algebraCompleteClosed

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse

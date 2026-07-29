import canonicalLaneMathlib.AdmissibleClass
import CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.CAlgebrasWAlgebrasAdmissibleClass
import CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.GNSRepresentation

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure WAlgebraCharacterization (C : CStarAlgebra) (W : WAlgebra C) where
  projectionProperty : ∀ x : C.carrier, x * x = x
  spectralCondition : Prop
  commutativeWhenIsomorphic : Prop

structure WAlgebraCharacterizationEvidence (C : CStarAlgebra) (W : WAlgebra C)
    (Ch : WAlgebraCharacterization C W) where
  projectionPropertyClosed : Ch.projectionProperty
  spectralConditionClosed : Ch.spectralCondition
  commutativeWhenIsomorphicClosed : Ch.commutativeWhenIsomorphic

def WAlgebraCharacterizationClosed (C : CStarAlgebra) (W : WAlgebra C)
    (Ch : WAlgebraCharacterization C W) : Prop :=
  Ch.projectionProperty ∧ Ch.spectralCondition ∧ Ch.commutativeWhenIsomorphic

theorem walgebra_characterization_closed_from_evidence
    (C : CStarAlgebra) (W : WAlgebra C)
    (Ch : WAlgebraCharacterization C W)
    (E : WAlgebraCharacterizationEvidence C W Ch) :
    WAlgebraCharacterizationClosed C W Ch := by
  exact And.intro E.projectionPropertyClosed
    (And.intro E.spectralConditionClosed E.commutativeWhenIsomorphicClosed)

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
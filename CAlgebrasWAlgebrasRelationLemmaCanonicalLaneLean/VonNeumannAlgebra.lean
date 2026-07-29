import canonicalLaneMathlib.AdmissibleClass
import CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.CAlgebrasWAlgebrasAdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure VonNeumannAlgebra (C : CStarAlgebra) (H : Type u) where
  representation : C.carrier → (H → H)
  weakClosure : Prop
  doubleCommutantProperty : Prop
  representationIsStarHomomorphism : Prop
  weakClosureClosed : weakClosure
  doubleCommutantPropertyClosed : doubleCommutantProperty
  representationIsStarHomomorphismClosed : representationIsStarHomomorphism

structure VonNeumannAlgebraEvidence (C : CStarAlgebra) (H : Type u)
    (V : VonNeumannAlgebra C H) where
  weakClosureClosed : V.weakClosure
  doubleCommutantPropertyClosed : V.doubleCommutantProperty
  representationIsStarHomomorphismClosed : V.representationIsStarHomomorphism

def VonNeumannAlgebraClosed (C : CStarAlgebra) (H : Type u)
    (V : VonNeumannAlgebra C H) : Prop :=
  V.weakClosure ∧ V.doubleCommutantProperty ∧ V.representationIsStarHomomorphism

theorem von_neumann_algebra_closed_from_evidence
    (C : CStarAlgebra) (H : Type u) (V : VonNeumannAlgebra C H)
    (E : VonNeumannAlgebraEvidence C H V) : VonNeumannAlgebraClosed C H V := by
  exact And.intro E.weakClosureClosed
    (And.intro E.doubleCommutantPropertyClosed E.representationIsStarHomomorphismClosed)

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
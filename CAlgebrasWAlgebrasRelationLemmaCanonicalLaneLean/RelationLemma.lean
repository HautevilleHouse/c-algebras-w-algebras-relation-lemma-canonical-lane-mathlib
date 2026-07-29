import canonicalLaneMathlib.AdmissibleClass
import CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.CAlgebrasWAlgebrasAdmissibleClass
import CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.WAlgebraCharacterization
import CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.VonNeumannAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure RelationLemmaPackage (C : CStarAlgebra) (W : WAlgebra C)
    (H : Type u) (V : VonNeumannAlgebra C H)
    (Ch : WAlgebraCharacterization C W) where
  walgebraImpliesVonNeumann : Ch.projectionProperty → V.weakClosure
  vonNeumannImpliesWalgebra : V.weakClosure → Ch.projectionProperty
  equivalenceEstablished : walgebraImpliesVonNeumann ∧ vonNeumannImpliesWalgebra

structure RelationLemmaEvidence (C : CStarAlgebra) (W : WAlgebra C)
    (H : Type u) (V : VonNeumannAlgebra C H)
    (Ch : WAlgebraCharacterization C W)
    (R : RelationLemmaPackage C W H V Ch) where
  forwardClosed : R.walgebraImpliesVonNeumann Ch.projectionPropertyClosed
  backwardClosed : R.vonNeumannImpliesWalgebra V.weakClosureClosed

def RelationLemmaClosed (C : CStarAlgebra) (W : WAlgebra C)
    (H : Type u) (V : VonNeumannAlgebra C H)
    (Ch : WAlgebraCharacterization C W)
    (R : RelationLemmaPackage C W H V Ch) : Prop :=
  (Ch.projectionProperty → V.weakClosure) ∧ (V.weakClosure → Ch.projectionProperty)

theorem relation_lemma_closed_from_evidence
    (C : CStarAlgebra) (W : WAlgebra C) (H : Type u)
    (V : VonNeumannAlgebra C H) (Ch : WAlgebraCharacterization C W)
    (R : RelationLemmaPackage C W H V Ch)
    (E : RelationLemmaEvidence C W H V Ch R) :
    RelationLemmaClosed C W H V Ch R := by
  exact And.intro E.forwardClosed E.backwardClosed

theorem relation_lemma_establishes_equivalence
    (C : CStarAlgebra) (W : WAlgebra C) (H : Type u)
    (V : VonNeumannAlgebra C H) (Ch : WAlgebraCharacterization C W)
    (R : RelationLemmaPackage C W H V Ch) :
    (Ch.projectionProperty ↔ V.weakClosure) := by
  exact And.intro R.walgebraImpliesVonNeumann R.vonNeumannImpliesWalgebra

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure RelationLemmaPackage (A : CStarAlgebra) (M : VonNeumannAlgebra) where
  embedding : CStarToWStarEmbedding A M
  doubleCommutant : DoubleCommutantPackage
  commutantRelation : Prop
  relationHolds : Prop
  commutantRelationTerm : commutantRelation
  relationHoldsTerm : relationHolds

structure RelationLemmaEvidence (A : CStarAlgebra) (M : VonNeumannAlgebra) (R : RelationLemmaPackage A M) where
  commutantRelationClosed : R.commutantRelation
  relationHoldsClosed : R.relationHolds

def RelationLemmaClosed (A : CStarAlgebra) (M : VonNeumannAlgebra) (R : RelationLemmaPackage A M) : Prop :=
  R.commutantRelation ∧ R.relationHolds

theorem relation_lemma_closed_from_evidence (A : CStarAlgebra) (M : VonNeumannAlgebra) (R : RelationLemmaPackage A M) (E : RelationLemmaEvidence A M R) :
    RelationLemmaClosed A M R :=
  And.intro E.commutantRelationClosed E.relationHoldsClosed

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse

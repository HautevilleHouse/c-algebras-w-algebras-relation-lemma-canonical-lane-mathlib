import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure DoubleDualEmbeddingPackage where
  cstarAlgebra : CStarAlgebra
  envelopingVonNeumannAlgebra : Type u
  embeddingMap : cstarAlgebra.carrier → envelopingVonNeumannAlgebra
  ultraWeakDensity : Prop
  embeddingIsStarHomomorphism : Prop
  embeddingIsIsometric : Prop
  ultraWeakDensityTerm : ultraWeakDensity
  embeddingIsStarHomomorphismTerm : embeddingIsStarHomomorphism
  embeddingIsIsometricTerm : embeddingIsIsometric

structure DoubleDualEmbeddingEvidence (D : DoubleDualEmbeddingPackage) where
  ultraWeakDensityClosed : D.ultraWeakDensity
  embeddingIsStarHomomorphismClosed : D.embeddingIsStarHomomorphism
  embeddingIsIsometricClosed : D.embeddingIsIsometric

def DoubleDualEmbeddingClosed (D : DoubleDualEmbeddingPackage) : Prop :=
  D.ultraWeakDensity ∧ D.embeddingIsStarHomomorphism ∧ D.embeddingIsIsometric

theorem double_dual_embedding_closed_from_evidence (D : DoubleDualEmbeddingPackage)
    (E : DoubleDualEmbeddingEvidence D) : DoubleDualEmbeddingClosed D := by
  exact And.intro E.ultraWeakDensityClosed
    (And.intro E.embeddingIsStarHomomorphismClosed E.embeddingIsIsometricClosed)

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
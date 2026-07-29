import HautevilleHouse.CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.CStarAlgebra
import HautevilleHouse.CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.WStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure EmbeddingLemmaPackage {A : CStarAlgebraPackage} {M : WStarAlgebraPackage} where
  embeddingMap : A.algebraType → M.predual
  isometricEmbedding : Prop
  starPreserving : Prop
  weakStarDenseImage : Prop

structure EmbeddingLemmaEvidence {A : CStarAlgebraPackage} {M : WStarAlgebraPackage} (E : EmbeddingLemmaPackage A M) where
  isometricEmbeddingClosed : E.isometricEmbedding
  starPreservingClosed : E.starPreserving
  weakStarDenseImageClosed : E.weakStarDenseImage

def EmbeddingLemmaClosed {A : CStarAlgebraPackage} {M : WStarAlgebraPackage} (E : EmbeddingLemmaPackage A M) : Prop :=
  E.isometricEmbedding ∧ E.starPreserving ∧ E.weakStarDenseImage

theorem embedding_lemma_closed_from_evidence {A : CStarAlgebraPackage} {M : WStarAlgebraPackage} (E : EmbeddingLemmaPackage A M) (Ev : EmbeddingLemmaEvidence E) : EmbeddingLemmaClosed E :=
  And.intro Ev.isometricEmbeddingClosed (And.intro Ev.starPreservingClosed Ev.weakStarDenseImageClosed)

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
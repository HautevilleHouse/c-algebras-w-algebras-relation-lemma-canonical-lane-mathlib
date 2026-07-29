import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure CStarToWStarEmbedding (A : CStarAlgebra) (M : VonNeumannAlgebra) where
  embeddingMap : A.carrier → M.carrier
  isStarHomomorphism : Prop
  isIsometric : Prop
  imageWeaklyDense : Prop
  isStarHomomorphismTerm : isStarHomomorphism
  isIsometricTerm : isIsometric
  imageWeaklyDenseTerm : imageWeaklyDense

structure CStarToWStarEmbeddingEvidence (A : CStarAlgebra) (M : VonNeumannAlgebra) (E : CStarToWStarEmbedding A M) where
  isStarHomomorphismClosed : E.isStarHomomorphism
  isIsometricClosed : E.isIsometric
  imageWeaklyDenseClosed : E.imageWeaklyDense

def CStarToWStarEmbeddingClosed (A : CStarAlgebra) (M : VonNeumannAlgebra) (E : CStarToWStarEmbedding A M) : Prop :=
  E.isStarHomomorphism ∧ E.isIsometric ∧ E.imageWeaklyDense

theorem c_star_to_w_star_embedding_closed_from_evidence (A : CStarAlgebra) (M : VonNeumannAlgebra) (E : CStarToWStarEmbedding A M) (Ev : CStarToWStarEmbeddingEvidence A M E) :
    CStarToWStarEmbeddingClosed A M E :=
  And.intro Ev.isStarHomomorphismClosed (And.intro Ev.isIsometricClosed Ev.imageWeaklyDenseClosed)

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse

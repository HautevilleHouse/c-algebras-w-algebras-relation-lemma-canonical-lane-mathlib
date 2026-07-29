import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure GNSRepresentation (A : CStarAlgebra) where
  hilbertSpace : Type u
  innerProduct : hilbertSpace → hilbertSpace → ℂ
  representation : A.carrier → (hilbertSpace → hilbertSpace)
  cyclicVector : hilbertSpace
  representationIsStarHom : Prop
  cyclicVectorCyclic : Prop
  representationIsStarHomTerm : representationIsStarHom
  cyclicVectorCyclicTerm : cyclicVectorCyclic

structure GNSRepresentationEvidence (A : CStarAlgebra) (G : GNSRepresentation A) where
  representationIsStarHomClosed : G.representationIsStarHom
  cyclicVectorCyclicClosed : G.cyclicVectorCyclic

def GNSRepresentationClosed (A : CStarAlgebra) (G : GNSRepresentation A) : Prop :=
  G.representationIsStarHom ∧ G.cyclicVectorCyclic

theorem gns_representation_closed_from_evidence (A : CStarAlgebra) (G : GNSRepresentation A) (E : GNSRepresentationEvidence A G) :
    GNSRepresentationClosed A G :=
  And.intro E.representationIsStarHomClosed E.cyclicVectorCyclicClosed

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass
import CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.CAlgebrasWAlgebrasAdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure GNSConstruction (C : CStarAlgebra) where
  hilbertSpace : Type u
  innerProduct : hilbertSpace → hilbertSpace → ℂ
  representation : C.carrier → (hilbertSpace → hilbertSpace)
  cyclicVector : hilbertSpace
  representationIsStarHomomorphism : Prop
  cyclicProperty : Prop
  representationClosed : representationIsStarHomomorphism ∧ cyclicProperty

structure GNSConstructionEvidence (C : CStarAlgebra) (G : GNSConstruction C) where
  representationIsStarHomomorphismClosed : G.representationIsStarHomomorphism
  cyclicPropertyClosed : G.cyclicProperty

def GNSConstructionClosed (C : CStarAlgebra) (G : GNSConstruction C) : Prop :=
  G.representationIsStarHomomorphism ∧ G.cyclicProperty

theorem gns_construction_closed_from_evidence
    (C : CStarAlgebra) (G : GNSConstruction C)
    (E : GNSConstructionEvidence C G) : GNSConstructionClosed C G := by
  exact And.intro E.representationIsStarHomomorphismClosed E.cyclicPropertyClosed

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
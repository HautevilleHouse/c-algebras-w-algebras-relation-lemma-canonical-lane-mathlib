import HautevilleHouse.CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.WStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure PredualStructurePackage (M : WStarAlgebraPackage) where
  predualSpace : Type u
  canonicalIsometry : Prop
  weakStarContinuousFunctionals : Prop

structure PredualStructureEvidence {M : WStarAlgebraPackage} (P : PredualStructurePackage M) where
  canonicalIsometryClosed : P.canonicalIsometry
  weakStarContinuousFunctionalsClosed : P.weakStarContinuousFunctionals

def PredualStructureClosed {M : WStarAlgebraPackage} (P : PredualStructurePackage M) : Prop :=
  P.canonicalIsometry ∧ P.weakStarContinuousFunctionals

theorem predual_structure_closed_from_evidence {M : WStarAlgebraPackage} (P : PredualStructurePackage M) (E : PredualStructureEvidence P) : PredualStructureClosed P :=
  And.intro E.canonicalIsometryClosed E.weakStarContinuousFunctionalsClosed

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.WStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure BicommutantPackage (M : WStarAlgebraPackage) where
  commutant : Type u
  doubleCommutant : Type v
  doubleCommutantEqualsM : Prop

structure BicommutantEvidence {M : WStarAlgebraPackage} (B : BicommutantPackage M) where
  doubleCommutantEqualsMClosed : B.doubleCommutantEqualsM

def BicommutantClosed {M : WStarAlgebraPackage} (B : BicommutantPackage M) : Prop :=
  B.doubleCommutantEqualsM

theorem bicommutant_closed_from_evidence {M : WStarAlgebraPackage} (B : BicommutantPackage M) (E : BicommutantEvidence B) : BicommutantClosed B :=
  E.doubleCommutantEqualsMClosed

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.CStarWStarRelation

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure DoubleCommutantPackage {P : CStarWStarRelationPackage} where
  cstar : P.cstar
  wstar : P.wstar
  commutantDefined : Prop
  doubleCommutantEqualsWStarClosure : Prop
  bicommutantDense : Prop

structure DoubleCommutantEvidence {P : CStarWStarRelationPackage}
    (D : DoubleCommutantPackage P) where
  commutantDefinedClosed : D.commutantDefined
  doubleCommutantEqualsWStarClosureClosed : D.doubleCommutantEqualsWStarClosure
  bicommutantDenseClosed : D.bicommutantDense

def DoubleCommutantClosed {P : CStarWStarRelationPackage}
    (D : DoubleCommutantPackage P) : Prop :=
  D.commutantDefined ∧ D.doubleCommutantEqualsWStarClosure ∧ D.bicommutantDense

theorem double_commutant_closed_from_evidence {P : CStarWStarRelationPackage}
    (D : DoubleCommutantPackage P) (E : DoubleCommutantEvidence D) :
    DoubleCommutantClosed D := by
  exact And.intro E.commutantDefinedClosed
    (And.intro E.doubleCommutantEqualsWStarClosureClosed E.bicommutantDenseClosed)

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse

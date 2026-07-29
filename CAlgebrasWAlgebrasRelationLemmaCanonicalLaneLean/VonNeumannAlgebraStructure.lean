import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure VonNeumannAlgebra where
  carrier : Type u
  star : carrier → carrier
  plus : carrier → carrier → carrier
  times : carrier → carrier → carrier
  zero : carrier
  one : carrier
  weakOperatorTopology : Prop
  doubleCommutantProperty : Prop
  predual : Type v
  isAWStarAlgebra : Prop
  weakOperatorTopologyTerm : weakOperatorTopology
  doubleCommutantPropertyTerm : doubleCommutantProperty
  predualTerm : predual
  isAWStarAlgebraTerm : isAWStarAlgebra

structure VonNeumannAlgebraEvidence (M : VonNeumannAlgebra) where
  weakOperatorTopologyClosed : M.weakOperatorTopology
  doubleCommutantPropertyClosed : M.doubleCommutantProperty
  isAWStarAlgebraClosed : M.isAWStarAlgebra

def VonNeumannAlgebraClosed (M : VonNeumannAlgebra) : Prop :=
  M.weakOperatorTopology ∧ M.doubleCommutantProperty ∧ M.isAWStarAlgebra

theorem von_neumann_algebra_closed_from_evidence (M : VonNeumannAlgebra) (E : VonNeumannAlgebraEvidence M) :
    VonNeumannAlgebraClosed M :=
  And.intro E.weakOperatorTopologyClosed (And.intro E.doubleCommutantPropertyClosed E.isAWStarAlgebraClosed)

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse

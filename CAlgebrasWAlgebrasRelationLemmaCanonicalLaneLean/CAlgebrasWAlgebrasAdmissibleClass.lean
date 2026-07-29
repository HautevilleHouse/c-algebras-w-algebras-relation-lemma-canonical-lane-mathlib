import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure CStarAlgebra where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  involution : carrier → carrier
  norm : carrier → ℝ
  cStarIdentity : ∀ x : carrier, norm (x * x) = norm x * norm x

def WAlgebra (C : CStarAlgebra) : Prop :=
  ∀ x : C.carrier, x * x = x

structure AdmittedObject where
  algebra : CStarAlgebra
  isWAlgebra : WAlgebra algebra
  conclusion : isWAlgebra

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.isWAlgebra ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
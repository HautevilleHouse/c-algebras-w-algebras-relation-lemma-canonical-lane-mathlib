import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : CStarAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CStarWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
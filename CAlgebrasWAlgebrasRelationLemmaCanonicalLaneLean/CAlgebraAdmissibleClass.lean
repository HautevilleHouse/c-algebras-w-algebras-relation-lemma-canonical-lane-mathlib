import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure CAlgebraAdmissibleObject where
  carrier : Type u
  starRing : StarRing carrier
  cStarNorm : NormedRing carrier
  complete : CompleteSpace carrier
  cStarIdentity : Prop

structure WAlgebraAdmissibleObject where
  carrier : Type u
  starRing : StarRing carrier
  predual : Type v
  normalPositiveCone : Set carrier
  wStarTopology : TopologicalSpace carrier

structure AdmissibleClass where
  cAlgebra : CAlgebraAdmissibleObject
  wAlgebra : WAlgebraAdmissibleObject
  embedding : cAlgebra.carrier → wAlgebra.carrier
  bridgeCondition : Prop
  gateCondition : Prop

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
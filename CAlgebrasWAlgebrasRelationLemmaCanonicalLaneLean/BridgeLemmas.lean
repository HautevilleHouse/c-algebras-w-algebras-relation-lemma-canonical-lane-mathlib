import canonicalLaneMathlib.AdmissibleClass
import CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.CAlgebrasWAlgebrasAdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.isWAlgebra

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
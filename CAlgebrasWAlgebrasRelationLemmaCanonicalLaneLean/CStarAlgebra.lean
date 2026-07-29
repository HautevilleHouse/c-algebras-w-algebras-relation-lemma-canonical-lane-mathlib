import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure CStarAlgebra where
  carrier : Type u
  star : carrier → carrier
  norm : carrier → ℝ
  mul : carrier → carrier → carrier
  add : carrier → carrier → carrier
  zero : carrier
  one : carrier
  starInvolution : ∀ a, star (star a) = a
  cstarIdentity : ∀ a, norm (star a * a) = norm a ^ 2
  banachAlgebra : Fact (∀ a b, norm (a * b) ≤ norm a * norm b)
  completeSpace : Fact (CompleteSpace carrier)

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
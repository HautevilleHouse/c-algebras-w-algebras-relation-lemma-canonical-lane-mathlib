import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure WStarAlgebra where
  carrier : Type u
  star : carrier → carrier
  norm : carrier → ℝ
  mul : carrier → carrier → carrier
  add : carrier → carrier → carrier
  zero : carrier
  one : carrier
  isCStar : CStarAlgebra (carrier := carrier) (star := star) (norm := norm) (mul := mul) (add := add) (zero := zero) (one := one)
  isDual : Fact (IsDual (normedAddCommGroup := by infer_instance))

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
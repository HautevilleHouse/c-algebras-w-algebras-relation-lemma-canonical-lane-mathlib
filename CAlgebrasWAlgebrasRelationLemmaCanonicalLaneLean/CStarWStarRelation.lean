import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure CStarAlgebra where
  carrier : Type u
  star : carrier → carrier
  norm : carrier → ℝ
  completeness : Prop
  CStarIdentity : Prop

structure WStarAlgebra where
  carrier : Type v
  star : carrier → carrier
  norm : carrier → ℝ
  completeness : Prop
  CStarIdentity : Prop
  predual : Type w
  isWStar : Prop

structure CStarWStarRelationPackage where
  cstar : CStarAlgebra
  wstar : WStarAlgebra
  embedding : cstar.carrier → wstar.carrier
  starPreserving : ∀ x : cstar.carrier, star (embedding x) = embedding (cstar.star x)
  isometry : ∀ x : cstar.carrier, wstar.norm (embedding x) = cstar.norm x
  weakStarDense : Prop
  doubleCommutantIdentifies : Prop

structure CStarWStarRelationEvidence (P : CStarWStarRelationPackage) where
  embeddingStarPreserving : ∀ x : P.cstar.carrier, P.wstar.star (P.embedding x) = P.embedding (P.cstar.star x)
  embeddingIsometry : ∀ x : P.cstar.carrier, P.wstar.norm (P.embedding x) = P.cstar.norm x
  weakStarDenseClosed : P.weakStarDense
  doubleCommutantIdentifiesClosed : P.doubleCommutantIdentifies

def CStarWStarRelationClosed (P : CStarWStarRelationPackage) : Prop :=
  (∀ x : P.cstar.carrier, P.wstar.star (P.embedding x) = P.embedding (P.cstar.star x)) ∧
  (∀ x : P.cstar.carrier, P.wstar.norm (P.embedding x) = P.cstar.norm x) ∧
  P.weakStarDense ∧ P.doubleCommutantIdentifies

theorem cstar_wstar_relation_closed_from_evidence (P : CStarWStarRelationPackage)
    (E : CStarWStarRelationEvidence P) : CStarWStarRelationClosed P := by
  exact And.intro E.embeddingStarPreserving
    (And.intro E.embeddingIsometry
      (And.intro E.weakStarDenseClosed E.doubleCommutantIdentifiesClosed))

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.CStarAlgebra
import HautevilleHouse.CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.WStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure EnvelopingWStarAlgebraPackage (G : CStarAlgebraPackage) where
  envelopingAlgebra : Type u
  isWStarAlgebra : WStarAlgebraPackage
  embedding : G.carrier → isWStarAlgebra.cstarAlgebra.carrier
  isInjective : Function.Injective embedding
  weakStarDense : DenseRange embedding
  universalProperty : ∀ (M : WStarAlgebraPackage) (φ : G.carrier → M.cstarAlgebra.carrier),
    (∀ x y, φ (x * y) = φ x * φ y) → (∀ x, φ (x⋆) = (φ x)⋆) →
    ∃! ψ : isWStarAlgebra.cstarAlgebra.carrier → M.cstarAlgebra.carrier,
      (∀ x, ψ (embedding x) = φ x) ∧ ∀ a b, ψ (a * b) = ψ a * ψ b ∧ ψ (a⋆) = (ψ a)⋆

structure EnvelopingWStarAlgebraEvidence {G : CStarAlgebraPackage}
    (E : EnvelopingWStarAlgebraPackage G) where
  isWStarAlgebraClosed : WStarAlgebraClosed E.isWStarAlgebra
  embeddingClosed : Function.Injective E.embedding
  weakStarDenseClosed : DenseRange E.embedding
  universalPropertyClosed : E.universalProperty

def EnvelopingWStarAlgebraClosed {G : CStarAlgebraPackage}
    (E : EnvelopingWStarAlgebraPackage G) : Prop :=
  WStarAlgebraClosed E.isWStarAlgebra ∧ Function.Injective E.embedding ∧
  DenseRange E.embedding ∧ E.universalProperty

theorem enveloping_wstar_algebra_closed_from_evidence {G : CStarAlgebraPackage}
    (E : EnvelopingWStarAlgebraPackage G) (Ev : EnvelopingWStarAlgebraEvidence E) :
    EnvelopingWStarAlgebraClosed E := by
  exact And.intro Ev.isWStarAlgebraClosed
    (And.intro Ev.embeddingClosed
      (And.intro Ev.weakStarDenseClosed Ev.universalPropertyClosed))

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
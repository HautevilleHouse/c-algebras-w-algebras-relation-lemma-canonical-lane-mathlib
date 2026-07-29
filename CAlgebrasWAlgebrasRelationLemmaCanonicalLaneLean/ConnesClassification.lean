import CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean.TomitaTakesakiModular

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

structure ConnesClassificationPackage {A : AdmissibleClass}
    {S : SakaiRadonNikodymPackage A}
    (T : TomitaTakesakiModularPackage S) where
  typeI : Prop
  typeII : Prop
  typeIII : Prop
  flowOfWeights : Prop
  typeIClosed : typeI
  typeIIClosed : typeII
  typeIIIClosed : typeIII
  flowOfWeightsClosed : flowOfWeights

def ConnesClassificationClosed {A : AdmissibleClass}
    {S : SakaiRadonNikodymPackage A}
    {T : TomitaTakesakiModularPackage S}
    (C : ConnesClassificationPackage T) : Prop :=
  C.typeI ∧ C.typeII ∧ C.typeIII ∧ C.flowOfWeights

theorem connes_classification_closed_from_evidence
    {A : AdmissibleClass} {S : SakaiRadonNikodymPackage A}
    {T : TomitaTakesakiModularPackage S}
    (C : ConnesClassificationPackage T) : ConnesClassificationClosed C := by
  exact And.intro C.typeIClosed (And.intro C.typeIIClosed (And.intro C.typeIIIClosed C.flowOfWeightsClosed))

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
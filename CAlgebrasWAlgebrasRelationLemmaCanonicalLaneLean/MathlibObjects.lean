import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CStarSpace where
  carrier : Type
  normedSpace : NormedAddCommGroup carrier

structure CStarAdmittedObject where
  space : CStarSpace
  cstarAlgebraStructure : Prop
  vonNeumannAlgebraStructure : Prop
  doubleDualEmbedding : Prop
  conclusion : doubleDualEmbedding

structure CStarEndgameState where
  object : CStarAdmittedObject

def CStarWitnessClosed (O : CStarAdmittedObject) : Prop :=
  O.doubleDualEmbedding

end CAlgebrasWAlgebrasRelationLemmaCanonicalLaneLean
end HautevilleHouse
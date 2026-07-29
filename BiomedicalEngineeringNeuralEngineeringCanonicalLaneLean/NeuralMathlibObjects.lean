import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure NeuralSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeuralAdmittedObject where
  space : NeuralSpace
  isFunctionalNetwork : Prop
  isSpiking : Prop
  decoderModel : Type
  decoderTopology : TopologicalSpace decoderModel
  decodingErrorBelowThreshold : Prop
  conclusion : decodingErrorBelowThreshold

structure NeuralEndgameState where
  object : NeuralAdmittedObject

def NeuralWitnessClosed (O : NeuralAdmittedObject) : Prop :=
  O.decodingErrorBelowThreshold

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse

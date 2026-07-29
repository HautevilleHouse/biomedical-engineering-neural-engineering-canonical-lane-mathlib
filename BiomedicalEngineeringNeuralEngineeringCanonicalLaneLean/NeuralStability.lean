import HautevilleHouse.BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean.NeuralMathlibObjects

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure NeuralStabilityPackage (O : NeuralAdmittedObject) where
  rateCodingStable : Prop
  temporalPatternStable : Prop
  synapticWeightStable : Prop
  noiseRobust : Prop

structure NeuralStabilityEvidence {O : NeuralAdmittedObject} (N : NeuralStabilityPackage O) where
  rateCodingStableClosed : N.rateCodingStable
  temporalPatternStableClosed : N.temporalPatternStable
  synapticWeightStableClosed : N.synapticWeightStable
  noiseRobustClosed : N.noiseRobust

def NeuralStabilityClosed {O : NeuralAdmittedObject} (N : NeuralStabilityPackage O) : Prop :=
  N.rateCodingStable ∧ N.temporalPatternStable ∧ N.synapticWeightStable ∧ N.noiseRobust

theorem neural_stability_closed_from_evidence
    {O : NeuralAdmittedObject} (N : NeuralStabilityPackage O) (E : NeuralStabilityEvidence N) :
    NeuralStabilityClosed N := by
  exact And.intro E.rateCodingStableClosed
    (And.intro E.temporalPatternStableClosed
      (And.intro E.synapticWeightStableClosed E.noiseRobustClosed))

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure NeuralSignalPackage where
  signalType : Type u
  timeDomain : Type v
  electrodeConfiguration : Prop
  spikeDetection : Prop
  frequencyBandAnalysis : Prop
  noiseModel : Prop

structure NeuralSignalEvidence (N : NeuralSignalPackage) where
  electrodeConfigurationClosed : N.electrodeConfiguration
  spikeDetectionClosed : N.spikeDetection
  frequencyBandAnalysisClosed : N.frequencyBandAnalysis
  noiseModelClosed : N.noiseModel

def NeuralSignalClosed (N : NeuralSignalPackage) : Prop :=
  N.electrodeConfiguration ∧ N.spikeDetection ∧ N.frequencyBandAnalysis ∧ N.noiseModel

theorem neural_signal_closed_from_evidence (N : NeuralSignalPackage) (E : NeuralSignalEvidence N) :
    NeuralSignalClosed N := by
  exact And.intro E.electrodeConfigurationClosed
    (And.intro E.spikeDetectionClosed
      (And.intro E.frequencyBandAnalysisClosed E.noiseModelClosed))

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
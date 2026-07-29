import HautevilleHouse.BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure NeuralSignalProcessingPackage where
  samplingRate : Float
  filterDesign : Prop
  spikeDetection : Prop
  featureExtraction : Prop
  decodingModel : Prop

structure NeuralSignalProcessingEvidence (N : NeuralSignalProcessingPackage) where
  filterDesignClosed : N.filterDesign
  spikeDetectionClosed : N.spikeDetection
  featureExtractionClosed : N.featureExtraction
  decodingModelClosed : N.decodingModel

def NeuralSignalProcessingClosed (N : NeuralSignalProcessingPackage) : Prop :=
  N.filterDesign ∧ N.spikeDetection ∧ N.featureExtraction ∧ N.decodingModel

theorem neural_signal_processing_closed_from_evidence (N : NeuralSignalProcessingPackage) (E : NeuralSignalProcessingEvidence N) :
    NeuralSignalProcessingClosed N := by
  exact And.intro E.filterDesignClosed (And.intro E.spikeDetectionClosed (And.intro E.featureExtractionClosed E.decodingModelClosed))

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
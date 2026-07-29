import HautevilleHouse.BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean.NeuralStability

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure SpikeTrainAnalyticCertificate where
  spikeTimingPrecision : Prop
  firingRateEstimate : Prop
  burstDetection : Prop
  spikeTimingPrecisionClosed : spikeTimingPrecision
  firingRateEstimateClosed : firingRateEstimate
  burstDetectionClosed : burstDetection

def SpikeTrainAnalyticCertificateClosed (S : SpikeTrainAnalyticCertificate) : Prop :=
  S.spikeTimingPrecision ∧ S.firingRateEstimate ∧ S.burstDetection

theorem spike_train_analytic_certificate_closed (S : SpikeTrainAnalyticCertificate) :
    SpikeTrainAnalyticCertificateClosed S := by
  exact And.intro S.spikeTimingPrecisionClosed
    (And.intro S.firingRateEstimateClosed S.burstDetectionClosed)

structure DecodingAnalyticCertificate where
  encodingModelSpecified : Prop
  decodingAccuracyMeasured : Prop
  noiseTolerance : Prop
  encodingModelSpecifiedClosed : encodingModelSpecified
  decodingAccuracyMeasuredClosed : decodingAccuracyMeasured
  noiseToleranceClosed : noiseTolerance

def DecodingAnalyticCertificateClosed (D : DecodingAnalyticCertificate) : Prop :=
  D.encodingModelSpecified ∧ D.decodingAccuracyMeasured ∧ D.noiseTolerance

theorem decoding_analytic_certificate_closed (D : DecodingAnalyticCertificate) :
    DecodingAnalyticCertificateClosed D := by
  exact And.intro D.encodingModelSpecifiedClosed
    (And.intro D.decodingAccuracyMeasuredClosed D.noiseToleranceClosed)

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse

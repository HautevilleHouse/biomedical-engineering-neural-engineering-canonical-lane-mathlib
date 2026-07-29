import HautevilleHouse.BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean.NeuralAnalyticProof

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure SpikeTrainEvidenceTerms {S : SpikeTrainAnalyticCertificate} where
  spikeTimingPrecision : S.spikeTimingPrecision
  firingRateEstimate : S.firingRateEstimate
  burstDetection : S.burstDetection
  spikeTrainClosed : SpikeTrainAnalyticCertificateClosed S

def SpikeTrainAnalyticCertificate.evidenceTerms {S : SpikeTrainAnalyticCertificate} : SpikeTrainEvidenceTerms S := {
  spikeTimingPrecision := S.spikeTimingPrecisionClosed
  firingRateEstimate := S.firingRateEstimateClosed
  burstDetection := S.burstDetectionClosed
  spikeTrainClosed := spike_train_analytic_certificate_closed S
}

structure DecodingEvidenceTerms {D : DecodingAnalyticCertificate} where
  encodingModelSpecified : D.encodingModelSpecified
  decodingAccuracyMeasured : D.decodingAccuracyMeasured
  noiseTolerance : D.noiseTolerance
  decodingClosed : DecodingAnalyticCertificateClosed D

def DecodingAnalyticCertificate.evidenceTerms {D : DecodingAnalyticCertificate} : DecodingEvidenceTerms D := {
  encodingModelSpecified := D.encodingModelSpecifiedClosed
  decodingAccuracyMeasured := D.decodingAccuracyMeasuredClosed
  noiseTolerance := D.noiseToleranceClosed
  decodingClosed := decoding_analytic_certificate_closed D
}

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse

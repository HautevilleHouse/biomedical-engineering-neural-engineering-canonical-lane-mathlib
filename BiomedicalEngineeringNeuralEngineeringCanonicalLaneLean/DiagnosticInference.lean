import HautevilleHouse.BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure DiagnosticInferencePackage where
  sensitivity : Float
  specificity : Float
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop
  rocAUC : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  positivePredictiveValueClosed : D.positivePredictiveValue
  negativePredictiveValueClosed : D.negativePredictiveValue
  rocAUCClosed : D.rocAUC

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.positivePredictiveValue ∧ D.negativePredictiveValue ∧ D.rocAUC

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage) (E : DiagnosticInferenceEvidence D) :
    DiagnosticInferenceClosed D := by
  exact And.intro E.positivePredictiveValueClosed (And.intro E.negativePredictiveValueClosed E.rocAUCClosed)

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
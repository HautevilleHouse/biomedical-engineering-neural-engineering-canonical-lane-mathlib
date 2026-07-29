import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean.PharmacokineticPackage

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure DiagnosticInferencePackage {N : NeuralSignalPackage} {C : CompartmentPackage N} {P : PharmacokineticPackage C} where
  classifierModel : Type
  sensitivity : Prop
  specificity : Prop
  positivePredictiveValue : Prop
  rocAuc : Prop

structure DiagnosticInferenceEvidence {N : NeuralSignalPackage} {C : CompartmentPackage N} {P : PharmacokineticPackage C} (D : DiagnosticInferencePackage P) where
  sensitivityClosed : D.sensitivity
  specificityClosed : D.specificity
  positivePredictiveValueClosed : D.positivePredictiveValue
  rocAucClosed : D.rocAuc

def DiagnosticInferenceClosed {N : NeuralSignalPackage} {C : CompartmentPackage N} {P : PharmacokineticPackage C} (D : DiagnosticInferencePackage P) : Prop :=
  D.sensitivity ∧ D.specificity ∧ D.positivePredictiveValue ∧ D.rocAuc

theorem diagnostic_inference_closed_from_evidence {N : NeuralSignalPackage} {C : CompartmentPackage N} {P : PharmacokineticPackage C} (D : DiagnosticInferencePackage P) (E : DiagnosticInferenceEvidence D) :
    DiagnosticInferenceClosed D := by
  exact And.intro E.sensitivityClosed
    (And.intro E.specificityClosed
      (And.intro E.positivePredictiveValueClosed E.rocAucClosed))

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
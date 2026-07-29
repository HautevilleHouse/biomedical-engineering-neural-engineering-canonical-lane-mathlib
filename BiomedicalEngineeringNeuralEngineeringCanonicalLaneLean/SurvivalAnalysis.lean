import HautevilleHouse.BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure SurvivalAnalysisPackage where
  hazardFunction : Type
  survivalFunction : Type
  censoringMechanism : Prop
  coxProportionalHazards : Prop
  kaplanMeierEstimator : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  censoringMechanismClosed : S.censoringMechanism
  coxProportionalHazardsClosed : S.coxProportionalHazards
  kaplanMeierEstimatorClosed : S.kaplanMeierEstimator

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.censoringMechanism ∧ S.coxProportionalHazards ∧ S.kaplanMeierEstimator

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysisPackage) (E : SurvivalAnalysisEvidence S) :
    SurvivalAnalysisClosed S := by
  exact And.intro E.censoringMechanismClosed (And.intro E.coxProportionalHazardsClosed E.kaplanMeierEstimatorClosed)

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
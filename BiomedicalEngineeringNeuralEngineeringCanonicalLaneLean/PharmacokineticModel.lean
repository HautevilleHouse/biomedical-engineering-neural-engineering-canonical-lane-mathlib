import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure PharmacokineticModelPackage where
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  concentrationTimeCourse : Prop
  therapeuticWindow : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModelPackage) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  concentrationTimeCourseClosed : P.concentrationTimeCourse
  therapeuticWindowClosed : P.therapeuticWindow

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationRate ∧ P.concentrationTimeCourse ∧ P.therapeuticWindow

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModelPackage) (E : PharmacokineticModelEvidence P) : PharmacokineticModelClosed P := by
  exact And.intro E.absorptionRateClosed (And.intro E.distributionVolumeClosed (And.intro E.eliminationRateClosed (And.intro E.concentrationTimeCourseClosed E.therapeuticWindowClosed)))

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
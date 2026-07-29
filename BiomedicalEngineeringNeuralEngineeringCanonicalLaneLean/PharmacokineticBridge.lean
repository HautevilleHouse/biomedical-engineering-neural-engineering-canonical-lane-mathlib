import HautevilleHouse.BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean.CompartmentModel

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure PharmacokineticPackage {C : CompartmentModelPackage} where
  absorptionModel : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  therapeuticWindow : Prop

structure PharmacokineticEvidence {C : CompartmentModelPackage} (P : PharmacokineticPackage C) where
  absorptionModelClosed : P.absorptionModel
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  therapeuticWindowClosed : P.therapeuticWindow

def PharmacokineticClosed {C : CompartmentModelPackage} (P : PharmacokineticPackage C) : Prop :=
  P.absorptionModel ∧ P.distributionVolume ∧ P.eliminationRate ∧ P.therapeuticWindow

theorem pharmacokinetic_closed_from_evidence {C : CompartmentModelPackage} (P : PharmacokineticPackage C) (E : PharmacokineticEvidence P) :
    PharmacokineticClosed P := by
  exact And.intro E.absorptionModelClosed (And.intro E.distributionVolumeClosed (And.intro E.eliminationRateClosed E.therapeuticWindowClosed))

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
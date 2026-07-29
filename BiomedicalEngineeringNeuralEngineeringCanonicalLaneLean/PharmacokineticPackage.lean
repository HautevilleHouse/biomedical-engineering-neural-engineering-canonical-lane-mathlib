import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean.CompartmentPackage

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure PharmacokineticPackage {N : NeuralSignalPackage} {C : CompartmentPackage N} where
  drugConcentrationModel : Type
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  therapeuticWindow : Prop

structure PharmacokineticEvidence {N : NeuralSignalPackage} {C : CompartmentPackage N} (P : PharmacokineticPackage C) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  therapeuticWindowClosed : P.therapeuticWindow

def PharmacokineticClosed {N : NeuralSignalPackage} {C : CompartmentPackage N} (P : PharmacokineticPackage C) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationRate ∧ P.therapeuticWindow

theorem pharmacokinetic_closed_from_evidence {N : NeuralSignalPackage} {C : CompartmentPackage N} (P : PharmacokineticPackage C) (E : PharmacokineticEvidence P) :
    PharmacokineticClosed P := by
  exact And.intro E.absorptionRateClosed
    (And.intro E.distributionVolumeClosed
      (And.intro E.eliminationRateClosed E.therapeuticWindowClosed))

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
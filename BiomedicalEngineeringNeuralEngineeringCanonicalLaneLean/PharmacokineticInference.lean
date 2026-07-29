import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure PharmacokineticParameterPackage where
  drugClearance : Prop
  volumeDistribution : Prop
  halfLife : Prop
  eliminationRate : Prop

structure PharmacokineticParameterEvidence (P : PharmacokineticParameterPackage) where
  parametersDerived : Prop

def PharmacokineticParameterClosed (P : PharmacokineticParameterPackage) : Prop :=
  P.drugClearance ∧ P.volumeDistribution ∧ P.halfLife ∧ P.eliminationRate

theorem pharmacokinetic_parameter_closed_from_evidence
    (P : PharmacokineticParameterPackage) (E : PharmacokineticParameterEvidence P) :
    PharmacokineticParameterClosed P :=
  And.intro (by exact P.drugClearance) (And.intro (by exact P.volumeDistribution) (And.intro (by exact P.halfLife) (by exact P.eliminationRate)))

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
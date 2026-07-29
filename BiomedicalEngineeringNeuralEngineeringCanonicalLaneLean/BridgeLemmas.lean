import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NeuralWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
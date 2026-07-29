import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure NeuralAdmittedObject where
  modelType : String
  validated : Prop
  conclusion : validated

structure AdmissibleClass where
  object : NeuralAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
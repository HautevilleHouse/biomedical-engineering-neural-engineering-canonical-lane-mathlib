import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure CompartmentModelPackage where
  numberOfCompartments : Nat
  flowRates : Type
  volumeDynamics : Prop
  membranePotentialDynamics : Prop
  synapticInput : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  volumeDynamicsClosed : C.volumeDynamics
  membranePotentialDynamicsClosed : C.membranePotentialDynamics
  synapticInputClosed : C.synapticInput

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.volumeDynamics ∧ C.membranePotentialDynamics ∧ C.synapticInput

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.volumeDynamicsClosed (And.intro E.membranePotentialDynamicsClosed E.synapticInputClosed)

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
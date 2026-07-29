import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure CompartmentModelPackage where
  numCompartments : Nat
  rateConstants : Type
  massBalance : Prop
  inputFunction : Prop

default numCompartments > 0 | rateConstants | massBalance | inputFunction

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  massBalanceClosed : C.massBalance
  inputFunctionClosed : C.inputFunction

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.massBalance ∧ C.inputFunction

theorem compartment_model_closed_from_evidence
    (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C :=
  And.intro E.massBalanceClosed E.inputFunctionClosed

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
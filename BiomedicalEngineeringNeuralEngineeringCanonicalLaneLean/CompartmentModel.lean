import HautevilleHouse.BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure CompartmentModelPackage where
  numCompartments : Nat
  rateConstants : List Float
  massBalanceEquations : Prop
  solutionClosedForm : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  massBalanceEquationsClosed : C.massBalanceEquations
  solutionClosedFormClosed : C.solutionClosedForm

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.massBalanceEquations ∧ C.solutionClosedForm

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.massBalanceEquationsClosed E.solutionClosedFormClosed

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
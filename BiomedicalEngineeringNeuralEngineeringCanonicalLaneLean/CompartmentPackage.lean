import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean.NeuralSignalPackage

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure CompartmentPackage {N : NeuralSignalPackage} where
  neuronModel : Type
  synapseModel : Type
  compartmentalDynamics : Prop
  membranePotentialEquation : Prop
  ionChannelCurrents : Prop

structure CompartmentEvidence {N : NeuralSignalPackage} (C : CompartmentPackage N) where
  compartmentalDynamicsClosed : C.compartmentalDynamics
  membranePotentialEquationClosed : C.membranePotentialEquation
  ionChannelCurrentsClosed : C.ionChannelCurrents

def CompartmentClosed {N : NeuralSignalPackage} (C : CompartmentPackage N) : Prop :=
  C.compartmentalDynamics ∧ C.membranePotentialEquation ∧ C.ionChannelCurrents

theorem compartment_closed_from_evidence {N : NeuralSignalPackage} (C : CompartmentPackage N) (E : CompartmentEvidence C) :
    CompartmentClosed C := by
  exact And.intro E.compartmentalDynamicsClosed
    (And.intro E.membranePotentialEquationClosed E.ionChannelCurrentsClosed)

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
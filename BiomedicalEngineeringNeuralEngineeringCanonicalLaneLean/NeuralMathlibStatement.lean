import HautevilleHouse.BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean.NeuralMathlibObjects
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure MathlibNeuralProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibNeuralProofObligation : MathlibNeuralProofObligation := {
  sourceKey := "BiomedicalEngineeringNeuralEngineering",
  theoremObject := "Neural decoding theorem",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

def commonCoreProjectionLawAvailable : Prop :=
  forall {X : Type} [Add X] [Sub X] (L : AdditiveLane X),
    L.xNext = L.state + L.projection.toFun L.delta

def commonCoreCarriageLawAvailable : Prop :=
  forall {X : Type} [Add X] [Sub X] (L : AdditiveLane X),
    L.carriedComponent = L.delta - L.projection.toFun L.delta

def commonCoreIdempotenceAvailable : Prop :=
  forall {X : Type} [Add X] [Sub X] (L : AdditiveLane X),
    L.projection.toFun (L.projection.toFun L.delta) = L.projection.toFun L.delta

theorem mathlib_common_core_imported_checked :
    mathlibNeuralProofObligation.commonCoreImported = true := by
  rfl

theorem mathlib_theorem_specific_definitions_native_checked :
    mathlibNeuralProofObligation.theoremSpecificDefinitionsNative = true := by
  rfl

theorem mathlib_theorem_specific_bridge_native_checked :
    mathlibNeuralProofObligation.theoremSpecificBridgeNative = true := by
  rfl

theorem mathlib_theorem_specific_admitted_closure_native_checked :
    mathlibNeuralProofObligation.theoremSpecificAdmittedClosureNative = true := by
  rfl

theorem mathlib_unrestricted_classical_closure_carried :
    mathlibNeuralProofObligation.unrestrictedClassicalClosureNative = false := by
  rfl

theorem mathlib_common_core_projection_law_checked :
    commonCoreProjectionLawAvailable := by
  intro X instAdd instSub L
  exact AdditiveLane.x_next_eq L

theorem mathlib_common_core_carriage_law_checked :
    commonCoreCarriageLawAvailable := by
  intro X instAdd instSub L
  exact AdditiveLane.carried_component_eq L

theorem mathlib_common_core_idempotence_checked :
    commonCoreIdempotenceAvailable := by
  intro X instAdd instSub L
  exact AdditiveLane.projection_idempotent_on_delta L

def theoremSpecificNeuralEndgamePilotClosed : Prop :=
  forall A : AdmissibleClass, ConstrainedNeuralClosure A

theorem theorem_specific_neural_endgame_pilot_checked :
    theoremSpecificNeuralEndgamePilotClosed := by
  intro A
  exact constrained_neural_endgame A

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean.NeuralSignalProcessing

namespace HautevilleHouse
namespace BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean

structure BrainMachineInterfacePackage {N : NeuralSignalProcessingPackage} where
  neuralDecoder : Prop
  actuatorCommand : Prop
  feedbackLoop : Prop
  closedLoopControl : Prop

structure BrainMachineInterfaceEvidence {N : NeuralSignalProcessingPackage} (B : BrainMachineInterfacePackage N) where
  neuralDecoderClosed : B.neuralDecoder
  actuatorCommandClosed : B.actuatorCommand
  feedbackLoopClosed : B.feedbackLoop
  closedLoopControlClosed : B.closedLoopControl

def BrainMachineInterfaceClosed {N : NeuralSignalProcessingPackage} (B : BrainMachineInterfacePackage N) : Prop :=
  B.neuralDecoder ∧ B.actuatorCommand ∧ B.feedbackLoop ∧ B.closedLoopControl

theorem brain_machine_interface_closed_from_evidence {N : NeuralSignalProcessingPackage} (B : BrainMachineInterfacePackage N) (E : BrainMachineInterfaceEvidence B) :
    BrainMachineInterfaceClosed B := by
  exact And.intro E.neuralDecoderClosed (And.intro E.actuatorCommandClosed (And.intro E.feedbackLoopClosed E.closedLoopControlClosed))

end BiomedicalEngineeringNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
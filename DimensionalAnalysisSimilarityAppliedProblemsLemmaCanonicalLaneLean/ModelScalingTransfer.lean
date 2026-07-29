import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure ModelScalingTransferPackage where
  prototypeParameters : List (String × ℚ)
  modelParameters : List (String × ℚ)
  scalingFactor : ℚ
  transferValidity : Prop

structure ModelScalingTransferEvidence (M : ModelScalingTransferPackage) where
  scalingFactorConsistent : Prop
  transferValidityClosed : M.transferValidity
  scalingFactorConsistentClosed : scalingFactorConsistent

def ModelScalingTransferClosed (M : ModelScalingTransferPackage) : Prop :=
  M.transferValidity ∧ (∀ (E : ModelScalingTransferEvidence M), E.scalingFactorConsistent)

theorem model_scaling_transfer_closed_from_evidence (M : ModelScalingTransferPackage) (E : ModelScalingTransferEvidence M) :
    ModelScalingTransferClosed M := by
  exact And.intro E.transferValidityClosed (fun _ => E.scalingFactorConsistentClosed)

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse
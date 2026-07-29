import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure SimilarityScalingPackage where
  physicalQuantities : List String
  scalingExponents : List ℚ
  invarianceCondition : Prop

structure SimilarityScalingEvidence (S : SimilarityScalingPackage) where
  invarianceConditionClosed : S.invarianceCondition
  scalingExponentsValid : Prop
  scalingExponentsValidClosed : scalingExponentsValid

def SimilarityScalingClosed (S : SimilarityScalingPackage) : Prop :=
  S.invarianceCondition ∧ (∀ (E : SimilarityScalingEvidence S), E.scalingExponentsValid)

theorem similarity_scaling_closed_from_evidence (S : SimilarityScalingPackage) (E : SimilarityScalingEvidence S) :
    SimilarityScalingClosed S := by
  exact And.intro E.invarianceConditionClosed (fun _ => E.scalingExponentsValidClosed)

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure SimilarityScalingPackage where
  scaleFactors : Type u
  similarityTransformation : Prop
  scalingGroup : Prop
  invariancePrinciple : Prop
  similarityTransformationClosed : similarityTransformation
  scalingGroupClosed : scalingGroup
  invariancePrincipleClosed : invariancePrinciple

def SimilarityScalingClosed (S : SimilarityScalingPackage) : Prop :=
  S.similarityTransformation ∧ S.scalingGroup ∧ S.invariancePrinciple

theorem similarity_scaling_closed_from_evidence (S : SimilarityScalingPackage) : SimilarityScalingClosed S :=
  And.intro S.similarityTransformationClosed (And.intro S.scalingGroupClosed S.invariancePrincipleClosed)

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse
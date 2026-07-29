import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure SimilarityParameterSpace where
  dimensionlessParameters : Type u
  piGroup : Type v
  scaleFactors : dimensionlessParameters → ℚ
  similarityTransformation : Prop
  scaleInvariance : Prop

structure SimilarityParameterEvidence (S : SimilarityParameterSpace) where
  similarityTransformationClosed : S.similarityTransformation
  scaleInvarianceClosed : S.scaleInvariance

def SimilarityParameterClosed (S : SimilarityParameterSpace) : Prop :=
  S.similarityTransformation ∧ S.scaleInvariance

theorem similarity_parameter_closed_from_evidence (S : SimilarityParameterSpace)
    (E : SimilarityParameterEvidence S) : SimilarityParameterClosed S := by
  exact And.intro E.similarityTransformationClosed E.scaleInvarianceClosed

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse
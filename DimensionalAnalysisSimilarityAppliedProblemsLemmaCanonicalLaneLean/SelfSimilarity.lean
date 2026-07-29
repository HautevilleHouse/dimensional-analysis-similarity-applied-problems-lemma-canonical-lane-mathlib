import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure SelfSimilarityPackage where
  selfSimilarFunction : Type u
  scalingExponent : Prop
  asymptoticBehavior : Prop
  selfSimilarFunctionClosed : selfSimilarFunction
  scalingExponentClosed : scalingExponent
  asymptoticBehaviorClosed : asymptoticBehavior

def SelfSimilarityClosed (S : SelfSimilarityPackage) : Prop :=
  S.selfSimilarFunction ∧ S.scalingExponent ∧ S.asymptoticBehavior

theorem self_similarity_closed_from_evidence (S : SelfSimilarityPackage) : SelfSimilarityClosed S :=
  And.intro S.selfSimilarFunctionClosed (And.intro S.scalingExponentClosed S.asymptoticBehaviorClosed)

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse
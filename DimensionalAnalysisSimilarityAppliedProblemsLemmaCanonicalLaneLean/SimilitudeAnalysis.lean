import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure SimilitudePackage where
  dimensionlessNumbers : List (String × ℚ)
  scalingLaws : List (String × String)
  similarityConditions : Prop

structure SimilitudeEvidence (S : SimilitudePackage) where
  dimensionlessNumbersDerived : Prop
  scalingLawsValid : Prop
  similarityConditionsClosed : S.similarityConditions
  dimensionlessNumbersDerivedClosed : dimensionlessNumbersDerived
  scalingLawsValidClosed : scalingLawsValid

def SimilitudeClosed (S : SimilitudePackage) : Prop :=
  S.similarityConditions ∧ (∀ (E : SimilitudeEvidence S), E.dimensionlessNumbersDerived ∧ E.scalingLawsValid)

theorem similitude_closed_from_evidence (S : SimilitudePackage) (E : SimilitudeEvidence S) :
    SimilitudeClosed S := by
  exact And.intro E.similarityConditionsClosed (fun _ => And.intro E.dimensionlessNumbersDerivedClosed E.scalingLawsValidClosed)

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse
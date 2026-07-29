import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure AppliedProblemsLemmaPackage {S : SimilarityParameterSpace}
    {B : BuckinghamPiTheoremPackage S}
    {E : SimilaritySolutionExistencePackage B}
    {A : SelfSimilarityAsymptoticPackage E} where
  scalingLawApplication : Prop
  similarityReductionApplied : Prop
  asymptoticMatchApplied : Prop
  engineeringValidation : Prop
  applicabilityDomain : Prop

structure AppliedProblemsLemmaEvidence {S : SimilarityParameterSpace}
    {B : BuckinghamPiTheoremPackage S}
    {E : SimilaritySolutionExistencePackage B}
    {A : SelfSimilarityAsymptoticPackage E}
    (L : AppliedProblemsLemmaPackage A) where
  scalingLawApplicationClosed : L.scalingLawApplication
  similarityReductionAppliedClosed : L.similarityReductionApplied
  asymptoticMatchAppliedClosed : L.asymptoticMatchApplied
  engineeringValidationClosed : L.engineeringValidation
  applicabilityDomainClosed : L.applicabilityDomain

def AppliedProblemsLemmaClosed {S : SimilarityParameterSpace}
    {B : BuckinghamPiTheoremPackage S}
    {E : SimilaritySolutionExistencePackage B}
    {A : SelfSimilarityAsymptoticPackage E}
    (L : AppliedProblemsLemmaPackage A) : Prop :=
  L.scalingLawApplication ∧ L.similarityReductionApplied ∧
  L.asymptoticMatchApplied ∧ L.engineeringValidation ∧ L.applicabilityDomain

theorem applied_problems_lemma_closed_from_evidence
    {S : SimilarityParameterSpace} {B : BuckinghamPiTheoremPackage S}
    {E : SimilaritySolutionExistencePackage B}
    {A : SelfSimilarityAsymptoticPackage E}
    (L : AppliedProblemsLemmaPackage A)
    (Ev : AppliedProblemsLemmaEvidence L) : AppliedProblemsLemmaClosed L := by
  exact And.intro Ev.scalingLawApplicationClosed
    (And.intro Ev.similarityReductionAppliedClosed
      (And.intro Ev.asymptoticMatchAppliedClosed
        (And.intro Ev.engineeringValidationClosed Ev.applicabilityDomainClosed)))

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse
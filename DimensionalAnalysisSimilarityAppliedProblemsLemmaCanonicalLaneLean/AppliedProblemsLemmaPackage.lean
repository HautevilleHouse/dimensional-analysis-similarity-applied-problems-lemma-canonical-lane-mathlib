import DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean.ScalingSimilarityPackage

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure AppliedProblemsLemmaPackage {D : DimensionalAnalysisDomainPackage}
    {P : PhysicalQuantityPackage D} {U : UnitSystemPackage P}
    {S : ScalingLawPackage U} {Sc : ScalingSimilarityPackage S}
    (A : AdmissibleClass) where
  problemFormulation : Prop
  similarityMapping : Prop
  solutionPrediction : Prop
  experimentalValidation : Prop

structure AppliedProblemsLemmaEvidence {D : DimensionalAnalysisDomainPackage}
    {P : PhysicalQuantityPackage D} {U : UnitSystemPackage P}
    {S : ScalingLawPackage U} {Sc : ScalingSimilarityPackage S}
    {A : AdmissibleClass} (L : AppliedProblemsLemmaPackage A) where
  problemFormulationClosed : L.problemFormulation
  similarityMappingClosed : L.similarityMapping
  solutionPredictionClosed : L.solutionPrediction
  experimentalValidationClosed : L.experimentalValidation

def AppliedProblemsLemmaClosed {D : DimensionalAnalysisDomainPackage}
    {P : PhysicalQuantityPackage D} {U : UnitSystemPackage P}
    {S : ScalingLawPackage U} {Sc : ScalingSimilarityPackage S}
    {A : AdmissibleClass} (L : AppliedProblemsLemmaPackage A) : Prop :=
  L.problemFormulation ∧ L.similarityMapping ∧
  L.solutionPrediction ∧ L.experimentalValidation

theorem applied_problems_lemma_closed_from_evidence
    {D : DimensionalAnalysisDomainPackage} {P : PhysicalQuantityPackage D}
    {U : UnitSystemPackage P} {S : ScalingLawPackage U}
    {Sc : ScalingSimilarityPackage S} {A : AdmissibleClass}
    (L : AppliedProblemsLemmaPackage A) (E : AppliedProblemsLemmaEvidence L) :
    AppliedProblemsLemmaClosed L := by
  exact And.intro E.problemFormulationClosed
    (And.intro E.similarityMappingClosed
      (And.intro E.solutionPredictionClosed E.experimentalValidationClosed))

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse
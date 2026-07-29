import DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure ScalingSimilarityPackage {D : DimensionalAnalysisDomainPackage}
    {P : PhysicalQuantityPackage D} {U : UnitSystemPackage P} (S : ScalingLawPackage U) where
  dimensionlessGroupDerived : Prop
  similarityCondition : Prop
  scaleInvariance : Prop
  piTheoremSatisfied : Prop

structure ScalingSimilarityEvidence {D : DimensionalAnalysisDomainPackage}
    {P : PhysicalQuantityPackage D} {U : UnitSystemPackage P}
    {S : ScalingLawPackage U} (Sc : ScalingSimilarityPackage S) where
  dimensionlessGroupDerivedClosed : Sc.dimensionlessGroupDerived
  similarityConditionClosed : Sc.similarityCondition
  scaleInvarianceClosed : Sc.scaleInvariance
  piTheoremSatisfiedClosed : Sc.piTheoremSatisfied

def ScalingSimilarityClosed {D : DimensionalAnalysisDomainPackage}
    {P : PhysicalQuantityPackage D} {U : UnitSystemPackage P}
    {S : ScalingLawPackage U} (Sc : ScalingSimilarityPackage S) : Prop :=
  Sc.dimensionlessGroupDerived ∧ Sc.similarityCondition ∧
  Sc.scaleInvariance ∧ Sc.piTheoremSatisfied

theorem scaling_similarity_closed_from_evidence
    {D : DimensionalAnalysisDomainPackage} {P : PhysicalQuantityPackage D}
    {U : UnitSystemPackage P} {S : ScalingLawPackage U}
    (Sc : ScalingSimilarityPackage S) (E : ScalingSimilarityEvidence Sc) :
    ScalingSimilarityClosed Sc := by
  exact And.intro E.dimensionlessGroupDerivedClosed
    (And.intro E.similarityConditionClosed
      (And.intro E.scaleInvarianceClosed E.piTheoremSatisfiedClosed))

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse
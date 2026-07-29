import DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean.AppliedProblemsLemmaPackage

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure EndpointClassificationPackage {D : DimensionalAnalysisDomainPackage}
    {P : PhysicalQuantityPackage D} {U : UnitSystemPackage P}
    {S : ScalingLawPackage U} {Sc : ScalingSimilarityPackage S}
    {A : AdmissibleClass} {L : AppliedProblemsLemmaPackage A}
    (Z : EndpointRecognitionPackage L) where
  targetQuantity : Type u
  dimensionExpression : DimensionExpression
  similarityMappingComplete : Prop
  dimensionlessGroupMatches : Prop

structure EndpointClassificationEvidence {D : DimensionalAnalysisDomainPackage}
    {P : PhysicalQuantityPackage D} {U : UnitSystemPackage P}
    {S : ScalingLawPackage U} {Sc : ScalingSimilarityPackage S}
    {A : AdmissibleClass} {L : AppliedProblemsLemmaPackage A}
    {Z : EndpointRecognitionPackage L} (Epkg : EndpointClassificationPackage Z) where
  similarityMappingCompleteClosed : Epkg.similarityMappingComplete
  dimensionlessGroupMatchesClosed : Epkg.dimensionlessGroupMatches

def EndpointClassificationClosed {D : DimensionalAnalysisDomainPackage}
    {P : PhysicalQuantityPackage D} {U : UnitSystemPackage P}
    {S : ScalingLawPackage U} {Sc : ScalingSimilarityPackage S}
    {A : AdmissibleClass} {L : AppliedProblemsLemmaPackage A}
    {Z : EndpointRecognitionPackage L} (Epkg : EndpointClassificationPackage Z) : Prop :=
  Epkg.similarityMappingComplete ∧ Epkg.dimensionlessGroupMatches

theorem endpoint_classification_closed_from_evidence
    {D : DimensionalAnalysisDomainPackage} {P : PhysicalQuantityPackage D}
    {U : UnitSystemPackage P} {S : ScalingLawPackage U}
    {Sc : ScalingSimilarityPackage S} {A : AdmissibleClass}
    {L : AppliedProblemsLemmaPackage A} {Z : EndpointRecognitionPackage L}
    (Epkg : EndpointClassificationPackage Z) (E : EndpointClassificationEvidence Epkg) :
    EndpointClassificationClosed Epkg := by
  exact And.intro E.similarityMappingCompleteClosed E.dimensionlessGroupMatchesClosed

theorem endpoint_classification_supplies_dimensionless_group
    {D : DimensionalAnalysisDomainPackage} {P : PhysicalQuantityPackage D}
    {U : UnitSystemPackage P} {S : ScalingLawPackage U}
    {Sc : ScalingSimilarityPackage S} {A : AdmissibleClass}
    {L : AppliedProblemsLemmaPackage A} {Z : EndpointRecognitionPackage L}
    (Epkg : EndpointClassificationPackage Z) :
    DimensionExpression := Epkg.dimensionExpression

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse
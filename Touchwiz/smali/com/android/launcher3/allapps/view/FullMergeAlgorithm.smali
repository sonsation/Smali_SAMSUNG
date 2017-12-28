.class final Lcom/android/launcher3/allapps/view/FullMergeAlgorithm;
.super Ljava/lang/Object;
.source "AppsSearchContainerView.java"

# interfaces
.implements Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public continueMerging(Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;III)Z
    .locals 2
    .param p1, "section"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    .param p2, "withSection"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    .param p3, "sectionAppCount"    # I
    .param p4, "numAppsPerRow"    # I
    .param p5, "mergeCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 78
    iget-object v1, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v1, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-eq v1, v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 82
    :cond_0
    return v0
.end method

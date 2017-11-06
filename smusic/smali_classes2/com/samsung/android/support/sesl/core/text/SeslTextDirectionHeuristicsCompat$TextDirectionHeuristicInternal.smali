.class Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;
.super Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
.source "SeslTextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextDirectionHeuristicInternal"
.end annotation


# instance fields
.field private final mDefaultIsRtl:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V
    .locals 0
    .param p1, "algorithm"    # Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;
    .param p2, "defaultIsRtl"    # Z

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;-><init>(Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V

    .line 156
    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    .line 157
    return-void
.end method


# virtual methods
.method protected defaultIsRtl()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    return v0
.end method

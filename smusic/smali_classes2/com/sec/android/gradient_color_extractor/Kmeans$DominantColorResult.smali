.class public Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
.super Ljava/lang/Object;
.source "Kmeans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gradient_color_extractor/Kmeans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DominantColorResult"
.end annotation


# instance fields
.field public color:I

.field public percentage:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "percentage"    # F

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    .line 29
    iput p2, p0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->percentage:F

    .line 30
    return-void
.end method

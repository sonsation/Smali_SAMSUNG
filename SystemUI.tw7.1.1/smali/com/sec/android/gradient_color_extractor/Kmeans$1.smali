.class Lcom/sec/android/gradient_color_extractor/Kmeans$1;
.super Ljava/lang/Object;
.source "Kmeans.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gradient_color_extractor/Kmeans;->kMeans_hsv([I[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;)I
    .locals 2

    iget v0, p2, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->percentage:F

    iget v1, p1, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->percentage:F

    sub-float/2addr v0, v1

    const v1, 0x47c35000    # 100000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    check-cast p2, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gradient_color_extractor/Kmeans$1;->compare(Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;)I

    move-result v0

    return v0
.end method

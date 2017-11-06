.class Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;
.super Ljava/lang/Object;
.source "SeslActivityOptionsCompat23.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method private constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0
    .param p1, "activityOptions"    # Landroid/app/ActivityOptions;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 90
    return-void
.end method

.method public static makeBasic()Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static makeClipRevealAnimation(Landroid/view/View;IIII)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 75
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    .line 76
    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    .line 75
    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I

    .prologue
    .line 37
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    .line 38
    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    .line 37
    return-object v0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    .line 43
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    .line 43
    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    .line 56
    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    .line 55
    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElements"    # [Landroid/view/View;
    .param p2, "sharedElementNames"    # [Ljava/lang/String;

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "pairs":[Landroid/util/Pair;
    if-eqz p1, :cond_0

    .line 64
    array-length v2, p1

    new-array v1, v2, [Landroid/util/Pair;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 66
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    .line 70
    invoke-static {p0, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    .line 69
    return-object v2
.end method

.method public static makeTaskLaunchBehind()Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    .line 81
    invoke-static {}, Landroid/app/ActivityOptions;->makeTaskLaunchBehind()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    .line 80
    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .prologue
    .line 49
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    .line 50
    invoke-static {p0, p1, p2, p3}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;-><init>(Landroid/app/ActivityOptions;)V

    .line 49
    return-object v0
.end method


# virtual methods
.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    .line 102
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;)V
    .locals 2
    .param p1, "otherOptions"    # Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 98
    return-void
.end method

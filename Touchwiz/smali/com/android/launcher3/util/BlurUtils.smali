.class public final Lcom/android/launcher3/util/BlurUtils;
.super Ljava/lang/Object;
.source "BlurUtils.java"


# static fields
.field private static final BLUR_UPDATE_LEVEL:F = 12.0f

.field private static final DEBUG:Z = false

.field private static final DEFAULT_BLUR_AMOUNT:F = 0.2f

.field private static final DEFAULT_BLUR_DURATION:J = -0x1L

.field private static final MAX_BLUR_AMOUNT:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "BlurUtils"

.field private static sBlur:Z

.field private static sBlurAmount:F

.field private static sRangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x7

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/util/BlurUtils;->sBlur:Z

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/util/BlurUtils;->sBlurAmount:F

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/BlurUtils;->sRangeList:Ljava/util/ArrayList;

    .line 45
    sget-object v0, Lcom/android/launcher3/util/BlurUtils;->sRangeList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/android/launcher3/util/BlurUtils;->sRangeList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/android/launcher3/util/BlurUtils;->sRangeList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static blurByWindowManager(ZLandroid/view/Window;)V
    .locals 4
    .param p0, "show"    # Z
    .param p1, "dest"    # Landroid/view/Window;

    .prologue
    .line 63
    const v0, 0x3e4ccccd    # 0.2f

    const-wide/16 v2, -0x1

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;FJ)V

    .line 64
    return-void
.end method

.method public static blurByWindowManager(ZLandroid/view/Window;FJ)V
    .locals 9
    .param p0, "show"    # Z
    .param p1, "dest"    # Landroid/view/Window;
    .param p2, "amount"    # F
    .param p3, "duration"    # J

    .prologue
    const/16 v7, 0x40

    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 67
    sget-boolean v2, Lcom/android/launcher3/util/BlurUtils;->sBlur:Z

    if-ne v2, p0, :cond_1

    sget-object v2, Lcom/android/launcher3/util/BlurUtils;->sRangeList:Ljava/util/ArrayList;

    sget v3, Lcom/android/launcher3/util/BlurUtils;->sBlurAmount:F

    const/high16 v4, 0x41400000    # 12.0f

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v2, v3, p2, v4, v5}, Lcom/android/launcher3/util/BlurUtils;->compareByStage(Ljava/util/ArrayList;FFFF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    .end local p2    # "amount":F
    :cond_0
    :goto_0
    return-void

    .line 70
    .restart local p2    # "amount":F
    :cond_1
    sget-boolean v2, Lcom/android/launcher3/util/BlurUtils;->sBlur:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    cmpl-float v2, p2, v1

    if-eqz v2, :cond_0

    .line 73
    :cond_2
    const-string v2, "BlurUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blurByWindowManager with show = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dest = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", amount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sBlur="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/launcher3/util/BlurUtils;->sBlur:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportBackgroundBlurByWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 76
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p0, :cond_3

    .line 77
    invoke-virtual {v0, v7}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 78
    invoke-virtual {v0, p3, p4}, Landroid/view/WindowManager$LayoutParams;->semSetEnterDimDuration(J)V

    .line 79
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 80
    invoke-virtual {p1, v6}, Landroid/view/Window;->addFlags(I)V

    .line 86
    :goto_1
    sput-boolean p0, Lcom/android/launcher3/util/BlurUtils;->sBlur:Z

    .line 87
    if-eqz p0, :cond_4

    .end local p2    # "amount":F
    :goto_2
    sput p2, Lcom/android/launcher3/util/BlurUtils;->sBlurAmount:F

    goto :goto_0

    .line 82
    .restart local p2    # "amount":F
    :cond_3
    invoke-virtual {v0, v7}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    .line 83
    invoke-virtual {v0, p3, p4}, Landroid/view/WindowManager$LayoutParams;->semSetEnterDimDuration(J)V

    .line 84
    invoke-virtual {p1, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    :cond_4
    move p2, v1

    .line 87
    goto :goto_2
.end method

.method private static compareByStage(Ljava/util/ArrayList;FFFF)Z
    .locals 10
    .param p1, "value1"    # F
    .param p2, "value2"    # F
    .param p3, "level"    # F
    .param p4, "max"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Range;",
            ">;FFFF)Z"
        }
    .end annotation

    .prologue
    .local p0, "rangeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Range;>;"
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 105
    const/4 v7, 0x0

    cmpl-float v7, p3, v7

    if-eqz v7, :cond_3

    .line 106
    div-float v7, p4, p3

    float-to-double v4, v7

    .line 107
    .local v4, "unitValue":D
    float-to-double v8, p1

    div-double/2addr v8, v4

    double-to-int v0, v8

    .line 108
    .local v0, "left":I
    float-to-double v8, p2

    div-double/2addr v8, v4

    double-to-int v2, v8

    .line 109
    .local v2, "right":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 110
    .local v1, "range":Landroid/util/Range;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 120
    .end local v0    # "left":I
    .end local v1    # "range":Landroid/util/Range;
    .end local v2    # "right":I
    .end local v4    # "unitValue":D
    :cond_1
    :goto_0
    return v3

    .line 118
    .restart local v0    # "left":I
    .restart local v2    # "right":I
    .restart local v4    # "unitValue":D
    :cond_2
    if-eq v0, v2, :cond_1

    move v3, v6

    goto :goto_0

    .end local v0    # "left":I
    .end local v2    # "right":I
    .end local v4    # "unitValue":D
    :cond_3
    move v3, v6

    .line 120
    goto :goto_0
.end method

.method public static getBlurAmount()F
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/launcher3/util/BlurUtils;->sBlur:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/launcher3/util/BlurUtils;->sBlurAmount:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMaxBlurAmount()F
    .locals 1

    .prologue
    .line 59
    const v0, 0x3e99999a    # 0.3f

    return v0
.end method

.method public static resetBlur()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/util/BlurUtils;->sBlur:Z

    .line 93
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/util/BlurUtils;->sBlurAmount:F

    .line 94
    return-void
.end method

.class public Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;
.super Lcom/android/systemui/screenshot/ScreenCaptureHelper;
.source "ScreenCaptureHelperForWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenshotMaxLayer()I
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 74
    const/4 v0, -0x1

    .line 75
    .local v0, "maxLayer":I
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v4, "windowCapture"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 76
    .local v2, "windowCaptureInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 77
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mHelperContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->getScreenshotMaxLayerInKnoxDesktop()I

    move-result v1

    .line 79
    .local v1, "maxLayerInKnoxDesktop":I
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 84
    .end local v1    # "maxLayerInKnoxDesktop":I
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getScreenshotMinLayer()I
    .locals 4

    .prologue
    .line 65
    const/4 v0, -0x1

    .line 66
    .local v0, "minLayer":I
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "windowCapture"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 67
    .local v1, "windowCaptureInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 68
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 70
    :cond_0
    return v0
.end method

.method protected initiallizeScreenshotVariable(Landroid/view/Display;)V
    .locals 12
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->getDisplayMetrics(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 21
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayWidth:I

    .line 22
    iget v10, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayHeight:I

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->getDegrees(Landroid/view/Display;)F

    move-result v10

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDegrees:F

    .line 25
    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v11, "windowCapture"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 26
    .local v9, "windowCaptureInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    .line 27
    .local v2, "left":I
    const/4 v8, -0x1

    .line 28
    .local v8, "top":I
    const/4 v3, -0x1

    .line 29
    .local v3, "right":I
    const/4 v0, -0x1

    .line 31
    .local v0, "bottom":I
    if-eqz v9, :cond_0

    .line 32
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 33
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 34
    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 35
    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 38
    :cond_0
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v2, v8, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    .line 39
    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mScreenWidth:I

    .line 40
    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mScreenHeight:I

    .line 41
    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDegrees:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    .line 42
    const/4 v5, 0x0

    .line 43
    .local v5, "tempLeft":I
    const/4 v6, 0x0

    .line 44
    .local v6, "tempRight":I
    const/4 v7, 0x0

    .line 45
    .local v7, "tempTop":I
    const/4 v4, 0x0

    .line 46
    .local v4, "tempBottom":I
    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDegrees:F

    const/high16 v11, 0x42b40000    # 90.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_2

    .line 47
    move v5, v8

    .line 48
    move v6, v0

    .line 49
    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayWidth:I

    sub-int v7, v10, v3

    .line 50
    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayWidth:I

    sub-int v4, v10, v2

    .line 51
    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v10, v5, v7, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    .end local v4    # "tempBottom":I
    .end local v5    # "tempLeft":I
    .end local v6    # "tempRight":I
    .end local v7    # "tempTop":I
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mScreenNativeWidth:F

    .line 61
    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mScreenNativeHeight:F

    .line 19
    return-void

    .line 52
    .restart local v4    # "tempBottom":I
    .restart local v5    # "tempLeft":I
    .restart local v6    # "tempRight":I
    .restart local v7    # "tempTop":I
    :cond_2
    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDegrees:F

    const/high16 v11, 0x43870000    # 270.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    .line 53
    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayHeight:I

    sub-int v5, v10, v0

    .line 54
    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayHeight:I

    sub-int v6, v10, v8

    .line 55
    move v7, v2

    .line 56
    move v4, v3

    .line 57
    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v10, v5, v7, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

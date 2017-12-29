.class public Lcom/android/server/wm/HorizontalModeController;
.super Ljava/lang/Object;
.source "HorizontalModeController.java"

# interfaces
.implements Lcom/android/server/wm/HorizontalModeService;


# static fields
.field public static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "HorizontalModeController"


# instance fields
.field private mConfigEnabled:Z

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mEnabled:Z

.field private mHorizontalModeRotation:I

.field private mHorizontalModeScale:F

.field private mHorizontalModeTransX:I

.field private mHorizontalModeTransY:I

.field private mHorizontalModeTransformation:Landroid/view/animation/Transformation;

.field private mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/HorizontalModeController;->DEBUG:Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/android/server/wm/HorizontalModeController;->mEnabled:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/server/wm/HorizontalModeController;->mConfigEnabled:Z

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeScale:F

    .line 46
    iput v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransX:I

    .line 47
    iput v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransY:I

    .line 48
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransformation:Landroid/view/animation/Transformation;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    .line 54
    iput v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeRotation:I

    .line 56
    return-void
.end method

.method private getOrientationFromAppToken(Lcom/android/server/wm/AppWindowToken;)I
    .locals 1
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget v0, p1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 211
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0

    .line 202
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 208
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private scaleUp(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 98
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/server/wm/HorizontalModeController;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 99
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/server/wm/HorizontalModeController;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 97
    return-void

    .line 98
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 99
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method


# virtual methods
.method public adjustInputWindowHandle(Lcom/android/server/input/InputWindowHandle;)V
    .locals 3
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 215
    iget v0, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    invoke-virtual {p0}, Lcom/android/server/wm/HorizontalModeController;->getScale()F

    move-result v1

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 216
    iget v0, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 217
    iget v0, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 218
    iget v0, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 219
    iget v0, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 214
    return-void
.end method

.method public adjustRectForHorizontalWindow(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;
    .param p7, "sf"    # Landroid/graphics/Rect;
    .param p8, "osf"    # Landroid/graphics/Rect;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    .line 80
    invoke-direct {p0, p2}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    .line 81
    invoke-direct {p0, p3}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    .line 82
    invoke-direct {p0, p4}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    .line 83
    invoke-direct {p0, p5}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    .line 84
    invoke-direct {p0, p6}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    .line 85
    invoke-direct {p0, p7}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    .line 86
    if-eqz p8, :cond_0

    .line 87
    invoke-direct {p0, p8}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    .line 89
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/HorizontalModeController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v1, "HorizontalModeController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed frame : pf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " df="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    const-string v2, " of="

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string v2, " cf="

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {p4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string v2, " vf="

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {p5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    const-string v2, " dcf="

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {p6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    const-string v2, " sf="

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    invoke-virtual {p7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    const-string v2, " osf="

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 94
    if-nez p8, :cond_2

    const-string v0, "null"

    .line 89
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    return-void

    .line 94
    :cond_2
    invoke-virtual {p8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 223
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Horizontal Mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mConfigEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/HorizontalModeController;->mConfigEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/HorizontalModeController;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mHorizontalModeTransformation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mHorizontalModeRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public getBottomOffset()I
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHorizontalModeRotation()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeRotation:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeScale:F

    return v0
.end method

.method public getTransX()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransX:I

    int-to-float v0, v0

    return v0
.end method

.method public getTransY()F
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransY:I

    int-to-float v0, v0

    return v0
.end method

.method public getTransformation(Lcom/android/server/wm/AppWindowToken;)Landroid/view/animation/Transformation;
    .locals 3
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/wm/HorizontalModeController;->isHorizontalModeWindow(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    const/4 v1, 0x0

    return-object v1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 135
    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 136
    .local v0, "tmpMat":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/server/wm/HorizontalModeController;->isScaleMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeScale:F

    iget v2, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeScale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 139
    :cond_1
    iget v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 141
    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransformation:Landroid/view/animation/Transformation;

    return-object v1
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;)V
    .locals 5
    .param p1, "_service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v4, 0x0

    .line 60
    iput-object p1, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 61
    iget-object v3, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 62
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 63
    .local v2, "dw":I
    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 64
    .local v0, "dh":I
    if-le v0, v2, :cond_0

    .line 65
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeRotation:I

    .line 67
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/HorizontalModeController;->initTransformation(II)V

    .line 70
    iput-boolean v4, p0, Lcom/android/server/wm/HorizontalModeController;->mConfigEnabled:Z

    .line 59
    return-void
.end method

.method public initTransformation(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 119
    if-le p2, p1, :cond_0

    .line 120
    move v0, p2

    .line 121
    .local v0, "tmp":I
    move p2, p1

    .line 122
    move p1, v0

    .line 124
    .end local v0    # "tmp":I
    :cond_0
    int-to-float v1, p2

    int-to-float v2, p1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeScale:F

    .line 125
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    int-to-float v3, p1

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransX:I

    .line 126
    iput v4, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransY:I

    .line 127
    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 118
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 108
    iget-boolean v0, p0, Lcom/android/server/wm/HorizontalModeController;->mConfigEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/HorizontalModeController;->mEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "debug.horizontalmode.fixed"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 109
    return v1

    .line 111
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isHorizontalModeWindow(I)Z
    .locals 6
    .param p1, "taskId"    # I

    .prologue
    const/4 v5, 0x0

    .line 161
    iget-object v3, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 162
    .local v2, "task":Lcom/android/server/wm/Task;
    if-nez v2, :cond_0

    .line 163
    return v5

    .line 166
    :cond_0
    iget-object v3, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 167
    iget-object v3, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 168
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v3, :cond_1

    iget v3, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/server/wm/HorizontalModeController;->isHorizontalModeWindow(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v3

    return v3

    .line 166
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 172
    .end local v0    # "appToken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    return v5
.end method

.method public isHorizontalModeWindow(Landroid/view/IApplicationToken;)Z
    .locals 3
    .param p1, "token"    # Landroid/view/IApplicationToken;

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    const/4 v1, 0x0

    return v1

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 180
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/HorizontalModeController;->isHorizontalModeWindow(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v1

    return v1
.end method

.method public isHorizontalModeWindow(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 4
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/android/server/wm/HorizontalModeController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 186
    :cond_0
    return v2

    .line 184
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v1, v3, :cond_0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/server/wm/HorizontalModeController;->getOrientationFromAppToken(Lcom/android/server/wm/AppWindowToken;)I

    move-result v0

    .line 189
    .local v0, "requestedOrientation":I
    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_2

    .line 190
    return v3

    .line 192
    :cond_2
    return v2
.end method

.method public isScaleMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 115
    const-string v1, "debug.sys.horizontalmode.scale"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 103
    sget-boolean v0, Lcom/android/server/wm/HorizontalModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "HorizontalModeController"

    if-eqz p1, :cond_1

    const-string v0, "Enabled "

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/HorizontalModeController;->mEnabled:Z

    .line 102
    return-void

    .line 103
    :cond_1
    const-string v0, "Disabled "

    goto :goto_0
.end method

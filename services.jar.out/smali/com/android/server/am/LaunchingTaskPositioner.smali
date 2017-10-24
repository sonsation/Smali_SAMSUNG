.class Lcom/android/server/am/LaunchingTaskPositioner;
.super Ljava/lang/Object;
.source "LaunchingTaskPositioner.java"


# static fields
.field private static final ALLOW_RESTART:Z = true

.field private static final BOUNDS_CONFLICT_MIN_DISTANCE:I = 0x4

.field private static final MARGIN_SIZE_DENOMINATOR:I = 0x4

.field private static final MINIMAL_STEP:I = 0x1

.field private static final SHIFT_POLICY_DIAGONAL_DOWN:I = 0x1

.field private static final SHIFT_POLICY_HORIZONTAL_LEFT:I = 0x3

.field private static final SHIFT_POLICY_HORIZONTAL_RIGHT:I = 0x2

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final TAG:Ljava/lang/String;

.field private static final WINDOW_SIZE_DENOMINATOR:I = 0x2


# instance fields
.field private final mAvailableRect:Landroid/graphics/Rect;

.field private mDefaultFreeformHeight:I

.field private mDefaultFreeformStartX:I

.field private mDefaultFreeformStartY:I

.field private mDefaultFreeformStepHorizontal:I

.field private mDefaultFreeformStepVertical:I

.field private mDefaultFreeformWidth:I

.field private mDefaultStartBoundsConfigurationSet:Z

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpOriginal:Landroid/graphics/Rect;

.field private final mTmpProposal:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/LaunchingTaskPositioner;->TAG:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    .line 104
    iput-object p1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 103
    return-void
.end method

.method private static boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z
    .locals 5
    .param p0, "proposal"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v4, 0x0

    .line 390
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 391
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 392
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    .line 393
    iget-object v0, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 394
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 395
    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    .line 394
    if-nez v3, :cond_0

    .line 396
    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    .line 394
    if-eqz v3, :cond_1

    .line 397
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 390
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 401
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return v4
.end method

.method private static final closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 415
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 416
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    .line 415
    :cond_0
    return v0
.end method

.method private static final closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 405
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 406
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    .line 405
    :cond_0
    return v0
.end method

.method private static final closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 420
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 421
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    .line 420
    :cond_0
    return v0
.end method

.method private static final closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 410
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 411
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    .line 410
    :cond_0
    return v0
.end method

.method private getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;)I
    .locals 4
    .param p1, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;

    .prologue
    .line 258
    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    .line 259
    .local v1, "height":I
    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v2, :cond_0

    .line 260
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 261
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 263
    .local v0, "densityDpi":I
    mul-int v2, v1, v0

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    div-int v1, v2, v3

    .line 266
    .end local v0    # "densityDpi":I
    :cond_0
    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 269
    :cond_1
    return v1
.end method

.method private getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;)I
    .locals 4
    .param p1, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;

    .prologue
    .line 243
    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    .line 244
    .local v1, "width":I
    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-lez v2, :cond_0

    .line 245
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 246
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 248
    .local v0, "densityDpi":I
    mul-int v2, v1, v0

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    div-int v1, v2, v3

    .line 251
    .end local v0    # "densityDpi":I
    :cond_0
    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 254
    :cond_1
    return v1
.end method

.method private offestToDefaultFreeformStartPosition(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 168
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 169
    .local v0, "dx":I
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 170
    .local v1, "dy":I
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 167
    return-void
.end method

.method private position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "proposal"    # Landroid/graphics/Rect;
    .param p4, "allowRestart"    # Z
    .param p5, "shiftPolicy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZIZ)V

    .line 314
    return-void
.end method

.method private position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZIZ)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "proposal"    # Landroid/graphics/Rect;
    .param p4, "allowRestart"    # Z
    .param p5, "shiftPolicy"    # I
    .param p6, "updateTask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "ZIZ)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "restarted":Z
    :cond_0
    invoke-static {p3, p2}, Lcom/android/server/am/LaunchingTaskPositioner;->boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    invoke-direct {p0, p3, p5}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftStartingPoint(Landroid/graphics/Rect;I)V

    .line 327
    invoke-direct {p0, p3, p5}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftedToFar(Landroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 330
    if-nez p4, :cond_2

    .line 331
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 359
    :cond_1
    :goto_0
    if-nez p6, :cond_6

    return-void

    .line 337
    :cond_2
    if-eqz v0, :cond_3

    .line 338
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 344
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 345
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    .line 346
    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    .line 344
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 347
    const/4 v0, 0x1

    .line 349
    :cond_4
    if-eqz v0, :cond_0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    if-gt v1, v2, :cond_5

    .line 350
    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    if-le v1, v2, :cond_0

    .line 354
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 361
    :cond_6
    invoke-virtual {p1, p3}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    .line 319
    return-void
.end method

.method private positionBottomLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    .line 275
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 274
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 276
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    .line 273
    return-void
.end method

.method private positionBottomRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    .line 282
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 281
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 283
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    .line 280
    return-void
.end method

.method private positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v4, 0x1

    .line 302
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    iget v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    .line 303
    iget v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    add-int/2addr v3, p3

    iget v5, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    add-int/2addr v5, p4

    .line 302
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 304
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    .line 301
    return-void
.end method

.method private positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v4, 0x1

    .line 309
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 310
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    .line 308
    return-void
.end method

.method private positionTopLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 289
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    .line 288
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 290
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    .line 287
    return-void
.end method

.method private positionTopRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 296
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    .line 295
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 297
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    .line 294
    return-void
.end method

.method private shiftStartingPoint(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "posposal"    # Landroid/graphics/Rect;
    .param p2, "shiftPolicy"    # I

    .prologue
    const/4 v1, 0x0

    .line 376
    packed-switch p2, :pswitch_data_0

    .line 384
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepVertical:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 375
    :goto_0
    return-void

    .line 378
    :pswitch_0
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    neg-int v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 381
    :pswitch_1
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shiftedToFar(Landroid/graphics/Rect;I)Z
    .locals 4
    .param p1, "start"    # Landroid/graphics/Rect;
    .param p2, "shiftPolicy"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 365
    packed-switch p2, :pswitch_data_0

    .line 371
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_3

    :cond_0
    :goto_0
    return v0

    .line 367
    :pswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 369
    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 371
    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method configure(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 116
    if-nez p1, :cond_5

    .line 117
    iget-object v7, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayWidth:I

    iget v9, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayHeight:I

    invoke-virtual {v7, v3, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 121
    :goto_0
    iget-object v7, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 122
    .local v4, "width":I
    iget-object v7, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 125
    .local v1, "height":I
    if-gt v4, v1, :cond_0

    move v3, v6

    .line 126
    .local v3, "isPortrait":Z
    :cond_0
    if-eqz v3, :cond_6

    const v5, 0x3f2b851f    # 0.67f

    .line 127
    .local v5, "widthRatio":F
    :goto_1
    if-eqz v3, :cond_7

    const/high16 v2, 0x3f000000    # 0.5f

    .line 133
    .local v2, "heightRatio":F
    :goto_2
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 134
    if-eqz v3, :cond_1

    :cond_1
    const/high16 v5, 0x3f000000    # 0.5f

    .line 135
    if-eqz v3, :cond_2

    :cond_2
    const/high16 v2, 0x3f000000    # 0.5f

    .line 137
    :cond_3
    int-to-float v7, v4

    mul-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    .line 138
    int-to-float v7, v1

    mul-float/2addr v7, v2

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    .line 139
    iget v7, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    sub-int v7, v4, v7

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    .line 140
    iget v7, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    sub-int v7, v1, v7

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    .line 148
    div-int/lit8 v7, v4, 0x10

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    .line 149
    div-int/lit8 v7, v1, 0x10

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepVertical:I

    .line 150
    iput-boolean v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    .line 152
    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v6, :cond_4

    .line 153
    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 154
    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 155
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_4

    .line 156
    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 157
    sget v7, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_task_offset_width:I

    .line 156
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    .line 158
    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 159
    sget v7, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_task_offset_height:I

    .line 158
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepVertical:I

    .line 115
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_4
    return-void

    .line 119
    .end local v1    # "height":I
    .end local v2    # "heightRatio":F
    .end local v3    # "isPortrait":Z
    .end local v4    # "width":I
    .end local v5    # "widthRatio":F
    :cond_5
    iget-object v7, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 126
    .restart local v1    # "height":I
    .restart local v3    # "isPortrait":Z
    .restart local v4    # "width":I
    :cond_6
    const/high16 v5, 0x3f000000    # 0.5f

    .restart local v5    # "widthRatio":F
    goto/16 :goto_1

    .line 127
    :cond_7
    const v2, 0x3f2b851f    # 0.67f

    .restart local v2    # "heightRatio":F
    goto/16 :goto_2
.end method

.method getDefaultTaskBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v4, 0x1

    .line 175
    invoke-direct {p0, p3}, Lcom/android/server/am/LaunchingTaskPositioner;->offestToDefaultFreeformStartPosition(Landroid/graphics/Rect;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 177
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    .line 178
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 173
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    .line 424
    return-void
.end method

.method setDisplay(Landroid/view/Display;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 109
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 110
    .local v0, "size":Landroid/graphics/Point;
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 111
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayWidth:I

    .line 112
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayHeight:I

    .line 108
    return-void
.end method

.method updateDefaultBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo$WindowLayout;)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    .line 196
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->updateDefaultBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo$WindowLayout;II)V

    .line 194
    return-void
.end method

.method updateDefaultBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo$WindowLayout;II)V
    .locals 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "fixedWidth"    # I
    .param p5, "fixedHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            "II)V"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 201
    iget-boolean v5, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    if-nez v5, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    if-nez p3, :cond_2

    .line 206
    if-lez p4, :cond_1

    if-lez p5, :cond_1

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v6, v6, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 208
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->offestToDefaultFreeformStartPosition(Landroid/graphics/Rect;)V

    .line 209
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;)V

    .line 210
    return-void

    .line 213
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    iget v5, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    iget v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/android/server/am/LaunchingTaskPositioner;->positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    .line 214
    return-void

    .line 217
    :cond_2
    if-lez p4, :cond_3

    move v4, p4

    .line 218
    .local v4, "width":I
    :goto_0
    if-lez p5, :cond_4

    move v1, p5

    .line 219
    .local v1, "height":I
    :goto_1
    iget v5, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v3, v5, 0x70

    .line 220
    .local v3, "verticalGravity":I
    iget v5, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v2, v5, 0x7

    .line 221
    .local v2, "horizontalGravity":I
    const/16 v5, 0x30

    if-ne v3, v5, :cond_6

    .line 222
    if-ne v2, v7, :cond_5

    .line 223
    invoke-direct {p0, p1, p2, v4, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->positionTopRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    .line 199
    :goto_2
    return-void

    .line 217
    .end local v1    # "height":I
    .end local v2    # "horizontalGravity":I
    .end local v3    # "verticalGravity":I
    .end local v4    # "width":I
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/server/am/LaunchingTaskPositioner;->getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;)I

    move-result v4

    .restart local v4    # "width":I
    goto :goto_0

    .line 218
    :cond_4
    invoke-direct {p0, p3}, Lcom/android/server/am/LaunchingTaskPositioner;->getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;)I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_1

    .line 225
    .restart local v2    # "horizontalGravity":I
    .restart local v3    # "verticalGravity":I
    :cond_5
    invoke-direct {p0, p1, p2, v4, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->positionTopLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_2

    .line 227
    :cond_6
    const/16 v5, 0x50

    if-ne v3, v5, :cond_8

    .line 228
    if-ne v2, v7, :cond_7

    .line 229
    invoke-direct {p0, p1, p2, v4, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->positionBottomRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_2

    .line 231
    :cond_7
    invoke-direct {p0, p1, p2, v4, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->positionBottomLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_2

    .line 236
    :cond_8
    sget-object v5, Lcom/android/server/am/LaunchingTaskPositioner;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received unsupported gravity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 237
    const-string/jumbo v7, ", positioning in the center instead."

    .line 236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0, p1, p2, v4, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_2
.end method

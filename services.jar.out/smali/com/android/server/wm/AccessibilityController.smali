.class final Lcom/android/server/wm/AccessibilityController;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;,
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    }
.end annotation


# static fields
.field private static final sTempFloats:[F


# instance fields
.field private mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field private mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .locals 0
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wm/AccessibilityController;->populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 81
    return-void
.end method

.method private static populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .locals 4
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 220
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 221
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 222
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 223
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 224
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 225
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 226
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 227
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 228
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 229
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 219
    return-void
.end method


# virtual methods
.method public drawMagnifiedRegionBorderIfNeededLocked()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->drawMagnifiedRegionBorderIfNeededLocked()V

    .line 199
    :cond_0
    return-void
.end method

.method public getMagnificationRegionLocked(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "outMagnificationRegion"    # Landroid/graphics/Region;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationRegionLocked(Landroid/graphics/Region;)V

    .line 130
    :cond_0
    return-void
.end method

.method public getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .locals 2
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v0

    return-object v0

    .line 210
    :cond_0
    return-object v1
.end method

.method public hasCallbacksLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 214
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 1
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 161
    :cond_0
    return-void
.end method

.method public onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V

    .line 136
    :cond_0
    return-void
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "rotation"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 152
    :cond_1
    return-void
.end method

.method public onSomeWindowResizedOrMovedLocked()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 190
    :cond_0
    return-void
.end method

.method public onWindowFocusChangedNotLocked()V
    .locals 3

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    monitor-exit v1

    .line 184
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindowsNotLocked()V

    .line 177
    :cond_0
    return-void

    .line 181
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public onWindowLayersChangedLocked()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowLayersChangedLocked()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 143
    :cond_1
    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 1
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 168
    :cond_1
    return-void
.end method

.method public setMagnificationCallbacksLocked(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    .prologue
    const/4 v1, 0x0

    .line 90
    if-eqz p1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Magnification callbacks already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 89
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-nez v0, :cond_2

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Magnification callbacks already cleared!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->destroyLocked()V

    .line 100
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    goto :goto_0
.end method

.method public setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 1
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 121
    :cond_1
    return-void
.end method

.method public setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .prologue
    const/4 v1, 0x0

    .line 105
    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 108
    const-string/jumbo v1, "Windows for accessibility callback already set!"

    .line 107
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 111
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 110
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 104
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-nez v0, :cond_2

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 115
    const-string/jumbo v1, "Windows for accessibility callback already cleared!"

    .line 114
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    goto :goto_0
.end method

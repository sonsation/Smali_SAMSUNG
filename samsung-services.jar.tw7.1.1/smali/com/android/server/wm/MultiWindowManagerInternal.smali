.class public Lcom/android/server/wm/MultiWindowManagerInternal;
.super Ljava/lang/Object;
.source "MultiWindowManagerInternal.java"

# interfaces
.implements Lcom/android/server/wm/IMultiWindowManagerInternalBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_ANIM:Z

.field private static final DEBUG_DIM_LAYER:Z = false

.field public static final SAFE_DEBUG:Z

.field private static final SLIDE_RESTORE_ORIGINAL_BOUNDS_DISTANCE:I = 0x1f4

.field private static final SLIDE_VISIBLE_AREA:I = 0x19

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerInternal"


# instance fields
.field private mAppWindowAnimating:Z

.field private mAreStacksAdjustedForIme:Z

.field private mAutoResizeAnimating:Z

.field private mCoolDownFreeformRequested:Z

.field private mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

.field private mDecorCaptionWindowHeight:I

.field private mEnsureDockedBounds:Landroid/graphics/Rect;

.field private mEnsureDockedResizing:Z

.field private mFakedRelaunchAnimTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mFeeformAlwaysVisible:Z

.field private mForceHideFloatingMultiWindow:Z

.field mFreeformRelaunchAnimState:I

.field private mFreeformRoundedCorner:F

.field private mFreeformTaskIdToOpen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFreeformTemporaryInvisible:Z

.field private mGrantPermissionComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

.field private final mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

.field private mIsBottomStackFullyAdjustedForIME:Z

.field private mIsDividerDragging:Z

.field private mIsFreeformDockingLeftOrBottom:Z

.field private mIsRequestedFreeformMinimizePolicy:Z

.field private mIsRotationAnimating:Z

.field private mIsSoftInputForceHidden:Z

.field private mLocalForceHideFloatingMultiWindow:Z

.field private mMinimizeContainerBounds:Landroid/graphics/Rect;

.field private mMinimizeSoftInput:Z

.field mMouseConnectedForDesktopMode:Z

.field private final mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/multiwindow/IMultiWindowEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

.field private mOrientationChanging:Z

.field mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

.field private final mStacksAdjustedForIme:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskIdToResizeInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpDimBounds:Landroid/graphics/Rect;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field private mTmpSlideOriginalBounds:Landroid/graphics/Rect;

.field private mTokensResizedInSplit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private mhasIMEHeightChanged:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskIdToResizeInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/MultiWindowManagerInternal;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowManagerInternal;->clearFakedRelaunchAnimTokensLocked(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->SAFE_DEBUG:Z

    .line 151
    sget-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    .line 152
    sget-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    .line 168
    iput v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRelaunchAnimState:I

    .line 170
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFeeformAlwaysVisible:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTemporaryInvisible:Z

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    .line 181
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    .line 182
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mLocalForceHideFloatingMultiWindow:Z

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGrantPermissionComponents:Ljava/util/ArrayList;

    .line 185
    iput-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

    .line 186
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeSoftInput:Z

    .line 188
    new-instance v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;-><init>(Lcom/android/server/wm/MultiWindowManagerInternal;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    .line 192
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 191
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    .line 194
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mAutoResizeAnimating:Z

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mStacksAdjustedForIme:Ljava/util/HashMap;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskIdToResizeInfo:Ljava/util/HashMap;

    .line 200
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCoolDownFreeformRequested:Z

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTaskIdToOpen:Ljava/util/ArrayList;

    .line 203
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsRequestedFreeformMinimizePolicy:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsDividerDragging:Z

    .line 207
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsSoftInputForceHidden:Z

    .line 209
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsBottomStackFullyAdjustedForIME:Z

    .line 210
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mhasIMEHeightChanged:Z

    .line 212
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsRotationAnimating:Z

    .line 213
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mOrientationChanging:Z

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskPositions:Ljava/util/HashMap;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTokensResizedInSplit:Ljava/util/ArrayList;

    .line 220
    iput-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    .line 222
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMouseConnectedForDesktopMode:Z

    .line 226
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedBounds:Landroid/graphics/Rect;

    .line 227
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedResizing:Z

    .line 230
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsFreeformDockingLeftOrBottom:Z

    .line 231
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mAppWindowAnimating:Z

    .line 232
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mAreStacksAdjustedForIme:Z

    .line 970
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 971
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpFloats:[F

    .line 972
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpDimBounds:Landroid/graphics/Rect;

    .line 234
    return-void
.end method

.method private addFakedRelaunchAnimTokensLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 3
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 3066
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3065
    :cond_0
    :goto_0
    return-void

    .line 3067
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2

    const-string v0, "MultiWindowManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFakedRelaunchAnimTokensLocked, adding wtoken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkTokensResizedInSplit(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 1709
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTokensResizedInSplit:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearFakedRelaunchAnimTokensLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 3073
    const-string v0, "MultiWindowManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearFakedRelaunchAnimTokensLocked, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3072
    return-void
.end method

.method private clearTokensResizedInSplit()V
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTokensResizedInSplit:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1712
    return-void
.end method

.method private getWindowFromPoint(Lcom/android/server/wm/DisplayContent;II)Lcom/android/server/wm/WindowState;
    .locals 7
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, 0x0

    .line 3044
    if-eqz p1, :cond_2

    .line 3045
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 3046
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3047
    .local v1, "touchableRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 3049
    .local v2, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3050
    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 3051
    .local v3, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_1

    .line 3049
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3055
    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3056
    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3057
    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3058
    return-object v3

    .line 3062
    .end local v0    # "i":I
    .end local v1    # "touchableRect":Landroid/graphics/Rect;
    .end local v2    # "touchableRegion":Landroid/graphics/Region;
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "windows":Lcom/android/server/wm/WindowList;
    :cond_2
    return-object v6
.end method

.method private hasRelaunchingAppWindowTokenLocked(Lcom/android/server/wm/TaskStack;)Z
    .locals 7
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v6, 0x0

    .line 3334
    if-eqz p1, :cond_2

    .line 3335
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 3336
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "taskIdx":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3337
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 3338
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_1

    .line 3339
    iget-object v5, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "appTokenIdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 3340
    iget-object v5, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 3341
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3342
    const/4 v5, 0x1

    return v5

    .line 3339
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3336
    .end local v0    # "appToken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "appTokenIdx":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3348
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "taskIdx":I
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_2
    return v6
.end method

.method private isEasyOneHandWindow(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 3395
    const/16 v1, 0x8ca

    if-eq p1, v1, :cond_0

    .line 3396
    const/16 v1, 0x8cf

    if-ne p1, v1, :cond_1

    .line 3395
    :cond_0
    :goto_0
    return v0

    .line 3397
    :cond_1
    const/16 v1, 0x8ce

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisibleOrBehindKeyguard(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v2, 0x0

    .line 3325
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 3326
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 3327
    .local v0, "animating":Z
    :goto_0
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_3

    :cond_0
    :goto_1
    move v0, v2

    .end local v0    # "animating":Z
    :cond_1
    :goto_2
    return v0

    .line 3326
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "animating":Z
    goto :goto_0

    .line 3327
    :cond_3
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v3, :cond_0

    .line 3328
    if-nez v1, :cond_7

    iget v3, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v3, :cond_0

    .line 3329
    :cond_4
    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v2, :cond_5

    iget v2, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v2, :cond_6

    .line 3330
    :cond_5
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_1

    .line 3329
    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    .line 3328
    :cond_7
    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_4

    goto :goto_1
.end method

.method private loadFreeformTaskCloseAnimation()Landroid/view/animation/Animation;
    .locals 11

    .prologue
    const v2, 0x3f6b851f    # 0.92f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 3125
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_0

    .line 3127
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3128
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 3130
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    sget-object v2, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3131
    const-wide/16 v2, 0x14a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 3132
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 3133
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 3134
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 3136
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3137
    .local v9, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3138
    const-wide/16 v2, 0xa7

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3139
    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 3140
    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 3141
    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 3143
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3144
    .local v10, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3145
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3146
    return-object v10

    .line 3150
    .end local v0    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    .end local v9    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    .end local v10    # "animSet":Landroid/view/animation/AnimationSet;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadFreeformTaskOpenAnimation()Landroid/view/animation/Animation;
    .locals 12

    .prologue
    const v1, 0x3f6b851f    # 0.92f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 3095
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_0

    .line 3097
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3098
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 3100
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    new-instance v11, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v3, 0x3f07ae14    # 0.53f

    const v4, 0x3e99999a    # 0.3f

    const v6, 0x3f99999a    # 1.2f

    invoke-direct {v11, v1, v3, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 3101
    .local v11, "freeformTaskOpenInterpolator":Landroid/view/animation/PathInterpolator;
    invoke-virtual {v0, v11}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3102
    const-wide/16 v6, 0x14a

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 3103
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 3104
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 3105
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 3107
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3108
    .local v9, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3109
    const-wide/16 v2, 0xa7

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3110
    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 3111
    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 3112
    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 3114
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3115
    .local v10, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3116
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3117
    return-object v10

    .line 3121
    .end local v0    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    .end local v9    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    .end local v10    # "animSet":Landroid/view/animation/AnimationSet;
    .end local v11    # "freeformTaskOpenInterpolator":Landroid/view/animation/PathInterpolator;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadMinimizeAnimationLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 25
    .param p1, "transit"    # I
    .param p2, "taskId"    # I
    .param p3, "sourceFrame"    # Landroid/graphics/Rect;
    .param p4, "surfaceInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 3155
    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    .line 3157
    .local v23, "targetPoint":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v18

    .line 3158
    .local v18, "isDesktopModeEnabled":Z
    if-eqz v18, :cond_4

    .line 3159
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskPositions:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3160
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskPositions:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Point;

    .line 3161
    .local v20, "position":Landroid/graphics/Point;
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 3179
    .end local v20    # "position":Landroid/graphics/Point;
    :goto_0
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 3180
    .local v21, "surfaceInsetsFrame":Landroid/graphics/Rect;
    if-eqz p4, :cond_0

    .line 3181
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3189
    :cond_0
    if-eqz v18, :cond_6

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v16, v0

    .line 3190
    .local v16, "distanceX":F
    if-eqz v18, :cond_7

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    :goto_2
    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v17, v0

    .line 3191
    .local v17, "distanceY":F
    new-instance v24, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v5, v1, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 3193
    .local v24, "translateAnim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float v9, v5, v6

    .line 3194
    .local v9, "pivotX":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float v10, v5, v6

    .line 3196
    .local v10, "pivotY":F
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v13, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3198
    .local v13, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    if-eqz v18, :cond_8

    .line 3199
    const-wide/16 v6, 0xc8

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3200
    sget-object v5, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3202
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e99999a    # 0.3f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 3203
    .end local v9    # "pivotX":F
    .end local v10    # "pivotY":F
    .local v4, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 3204
    sget-object v5, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3206
    const-wide/16 v6, 0x64

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3207
    const-wide/16 v6, 0x64

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 3208
    sget-object v5, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v13, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3214
    :goto_3
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v14, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3215
    .local v14, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v14, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3216
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3217
    invoke-virtual {v14, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3218
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 3219
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 3220
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsRequestedFreeformMinimizePolicy:Z

    if-nez v5, :cond_1

    .line 3221
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 3223
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiWindowManagerInternal;->requestFreeformMinimizedPolicy(Z)V

    .line 3225
    if-nez v18, :cond_2

    .line 3226
    sget-object v5, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3227
    const-wide/16 v6, 0xfa

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 3228
    new-instance v5, Lcom/android/server/wm/MultiWindowManagerInternal$2;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal$2;-><init>(Lcom/android/server/wm/MultiWindowManagerInternal;ILandroid/graphics/Rect;)V

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3240
    :cond_2
    return-object v14

    .line 3163
    .end local v4    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    .end local v13    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    .end local v14    # "animSet":Landroid/view/animation/AnimationSet;
    .end local v16    # "distanceX":F
    .end local v17    # "distanceY":F
    .end local v21    # "surfaceInsetsFrame":Landroid/graphics/Rect;
    .end local v24    # "translateAnim":Landroid/view/animation/TranslateAnimation;
    :cond_3
    new-instance v22, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3164
    .local v22, "targetFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    .line 3165
    .local v15, "displayContent":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 3166
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 3167
    .local v19, "navigationBarFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 3168
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 3167
    move-object/from16 v0, v19

    invoke-interface {v5, v6, v7, v8, v0}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    .line 3169
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v6, v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    .line 3173
    .end local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v19    # "navigationBarFrame":Landroid/graphics/Rect;
    .end local v22    # "targetFrame":Landroid/graphics/Rect;
    :cond_4
    new-instance v22, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3174
    .restart local v22    # "targetFrame":Landroid/graphics/Rect;
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3175
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 3177
    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    .line 3189
    .end local v22    # "targetFrame":Landroid/graphics/Rect;
    .restart local v21    # "surfaceInsetsFrame":Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    goto/16 :goto_1

    .line 3190
    .restart local v16    # "distanceX":F
    :cond_7
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    goto/16 :goto_2

    .line 3211
    .restart local v9    # "pivotX":F
    .restart local v10    # "pivotY":F
    .restart local v13    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    .restart local v17    # "distanceY":F
    .restart local v24    # "translateAnim":Landroid/view/animation/TranslateAnimation;
    :cond_8
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e4ccccd    # 0.2f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e4ccccd    # 0.2f

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v4    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    goto/16 :goto_3
.end method

.method private loadResource()V
    .locals 4

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 253
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    sget v1, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_desktop_freeform_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRoundedCorner:F

    .line 255
    sget v1, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_desktop_freeform_decor_caption_window_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mDecorCaptionWindowHeight:I

    .line 261
    :goto_0
    sget-boolean v1, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiWindowManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadResource: mFreeformRoundedCorner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRoundedCorner:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 262
    const-string v3, ", mDecorCaptionWindowHeight="

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 262
    iget v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mDecorCaptionWindowHeight:I

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 263
    const-string v3, ", isDesktopMode="

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 263
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v3

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    return-void

    .line 258
    :cond_1
    sget v1, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_guide_window_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRoundedCorner:F

    .line 259
    sget v1, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_samsung_freeform_decor_caption_window_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mDecorCaptionWindowHeight:I

    goto :goto_0
.end method

.method private loadUnminimizeAnimationLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 23
    .param p1, "transit"    # I
    .param p2, "taskId"    # I
    .param p3, "targetFrame"    # Landroid/graphics/Rect;
    .param p4, "surfaceInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 3247
    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    .line 3249
    .local v20, "sourcePoint":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v16

    .line 3250
    .local v16, "isDesktopModeEnabled":Z
    if-eqz v16, :cond_3

    .line 3251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskPositions:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskPositions:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    .line 3253
    .local v18, "position":Landroid/graphics/Point;
    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 3272
    .end local v18    # "position":Landroid/graphics/Point;
    :goto_0
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 3273
    .local v21, "surfaceInsetsFrame":Landroid/graphics/Rect;
    if-eqz p4, :cond_0

    .line 3274
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3282
    :cond_0
    if-eqz v16, :cond_5

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    sub-int/2addr v3, v4

    int-to-float v14, v3

    .line 3283
    .local v14, "distanceX":F
    if-eqz v16, :cond_6

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    :goto_2
    sub-int/2addr v3, v4

    int-to-float v15, v3

    .line 3284
    .local v15, "distanceY":F
    new-instance v22, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v14, v3, v15, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 3286
    .local v22, "translateAnim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float v7, v3, v4

    .line 3287
    .local v7, "pivotX":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float v8, v3, v4

    .line 3289
    .local v8, "pivotY":F
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v11, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3291
    .local v11, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    if-eqz v16, :cond_7

    .line 3292
    const-wide/16 v4, 0xc8

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3293
    sget-object v3, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3295
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 3296
    .end local v7    # "pivotX":F
    .end local v8    # "pivotY":F
    .local v2, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 3297
    sget-object v3, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3299
    const-wide/16 v4, 0x64

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3300
    const-wide/16 v4, 0x64

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 3301
    sget-object v3, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3307
    :goto_3
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3308
    .local v12, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3309
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3310
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3311
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 3312
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 3313
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 3314
    if-nez v16, :cond_1

    .line 3315
    sget-object v3, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3316
    const-wide/16 v4, 0xfa

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 3319
    :cond_1
    return-object v12

    .line 3255
    .end local v2    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    .end local v11    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    .end local v12    # "animSet":Landroid/view/animation/AnimationSet;
    .end local v14    # "distanceX":F
    .end local v15    # "distanceY":F
    .end local v21    # "surfaceInsetsFrame":Landroid/graphics/Rect;
    .end local v22    # "translateAnim":Landroid/view/animation/TranslateAnimation;
    :cond_2
    new-instance v19, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3256
    .local v19, "sourceFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    .line 3257
    .local v13, "displayContent":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 3258
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 3259
    .local v17, "navigationBarFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 3260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 3259
    move-object/from16 v0, v17

    invoke-interface {v3, v4, v5, v6, v0}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    .line 3261
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    .line 3265
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v17    # "navigationBarFrame":Landroid/graphics/Rect;
    .end local v19    # "sourceFrame":Landroid/graphics/Rect;
    :cond_3
    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3266
    .restart local v19    # "sourceFrame":Landroid/graphics/Rect;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 3269
    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    .line 3282
    .end local v19    # "sourceFrame":Landroid/graphics/Rect;
    .restart local v21    # "surfaceInsetsFrame":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    goto/16 :goto_1

    .line 3283
    .restart local v14    # "distanceX":F
    :cond_6
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    goto/16 :goto_2

    .line 3304
    .restart local v7    # "pivotX":F
    .restart local v8    # "pivotY":F
    .restart local v11    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    .restart local v15    # "distanceY":F
    .restart local v22    # "translateAnim":Landroid/view/animation/TranslateAnimation;
    :cond_7
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v2    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    goto/16 :goto_3
.end method

.method private prepareAppTransitionIfNeeded(Lcom/android/server/wm/TaskStack;)V
    .locals 8
    .param p1, "freeformStack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 3078
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3079
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 3080
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_3

    .line 3081
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v0, v5, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 3082
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_2

    .line 3083
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 3084
    .local v1, "activity":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v5, :cond_0

    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v5, :cond_1

    .line 3082
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3084
    :cond_1
    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v5, :cond_0

    .line 3085
    const-string v5, "MultiWindowManagerInternal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveStackToBottomLocked: add closingApps token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3080
    .end local v1    # "activity":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3090
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v2    # "activityNdx":I
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 3077
    .end local v3    # "taskNdx":I
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_4
    return-void
.end method

.method private prepareFreeformResizeAnimLocked(Lcom/android/server/wm/Task;)V
    .locals 6
    .param p1, "resizingTask"    # Lcom/android/server/wm/Task;

    .prologue
    .line 3352
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v5, :cond_3

    .line 3353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3354
    .local v0, "targetTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v5, p1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "wtoken$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 3355
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "win$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 3356
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3357
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3362
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "win$iterator":Ljava/util/Iterator;
    .end local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3363
    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->prepareFreeformResizeAnimLocked(Ljava/util/ArrayList;)V

    .line 3351
    .end local v0    # "targetTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v4    # "wtoken$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private prepareFreeformResizeAnimLocked(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "targetTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v7, 0x0

    .line 3369
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v5, :cond_6

    .line 3370
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3371
    :cond_0
    const-string v5, "MultiWindowManagerInternal"

    const-string v6, "prepareFreeformResizeAnimLocked: no target tokens"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    return-void

    .line 3374
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3375
    const-string v5, "MultiWindowManagerInternal"

    const-string v6, "prepareFreeformResizeAnimLocked: display isn\'t ready"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    return-void

    .line 3378
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;

    move-result-object v0

    .line 3379
    .local v0, "screenFreezeAnim":Lcom/android/server/wm/ScreenFreezeAnimation;
    const/4 v5, 0x3

    invoke-virtual {v0, p1, v5}, Lcom/android/server/wm/ScreenFreezeAnimation;->setScreenFreezeAnimation(Ljava/util/ArrayList;I)V

    .line 3380
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->prepare()V

    .line 3381
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "wtoken$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 3382
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "win$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 3383
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, v3, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v5, :cond_4

    .line 3384
    :cond_5
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v6, 0x1

    iput v6, v5, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 3385
    iput-boolean v7, v3, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 3386
    iput-boolean v7, v3, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    goto :goto_0

    .line 3368
    .end local v0    # "screenFreezeAnim":Lcom/android/server/wm/ScreenFreezeAnimation;
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "win$iterator":Ljava/util/Iterator;
    .end local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "wtoken$iterator":Ljava/util/Iterator;
    :cond_6
    return-void
.end method

.method private updateAdjustedForImeState(Z)V
    .locals 1
    .param p1, "isAdjustedForIme"    # Z

    .prologue
    .line 3540
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mAreStacksAdjustedForIme:Z

    if-eq v0, p1, :cond_0

    .line 3541
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mAreStacksAdjustedForIme:Z

    .line 3542
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0, p1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->adjustedForImeStateChanged(Z)V

    .line 3539
    :cond_0
    return-void
.end method


# virtual methods
.method public addFreeformTaskToOpen(I)V
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    .line 2713
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_1

    .line 2714
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2715
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 2716
    const-string v0, "MultiWindowManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFreeformTaskToOpen :: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTaskIdToOpen:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2712
    :cond_1
    return-void

    .line 2714
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addGrantPermissionComponent(Ljava/lang/String;)V
    .locals 1
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 280
    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGrantPermissionComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGrantPermissionComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 279
    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addStackAdjustedForIme(ILcom/android/server/wm/TaskStack;)V
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 2189
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mStacksAdjustedForIme:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->updateAdjustedForImeState(Z)V

    .line 2187
    return-void
.end method

.method public adjOffsetForSnapWindowTarget(Landroid/os/IBinder;I)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "offset"    # I

    .prologue
    .line 1340
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v2, :cond_1

    .line 1341
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1342
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1343
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 1344
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 1345
    .local v1, "w":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    .line 1346
    iget v2, v1, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_2

    .line 1347
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v2, v4

    if-nez v2, :cond_2

    .line 1348
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getStatusBarHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/2addr p2, v2

    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    :goto_0
    monitor-exit v3

    .line 1356
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return p2

    .line 1349
    .restart local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_2
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_0

    .line 1350
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getStatusBarHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    add-int/2addr p2, v2

    goto :goto_0

    .line 1341
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public adjStackBoundsForSnapWindow()V
    .locals 4

    .prologue
    .line 1396
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_1

    .line 1397
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1398
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 1399
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1400
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/TaskStack;->mAdjBoundsForSnapWindow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1395
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    return-void

    .line 1397
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public adjustBoundsForNaviBarForConfigChange(ILandroid/graphics/Rect;ILandroid/graphics/Rect;)V
    .locals 14
    .param p1, "oldRotation"    # I
    .param p2, "oldBounds"    # Landroid/graphics/Rect;
    .param p3, "newRotation"    # I
    .param p4, "newBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1718
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->hasNavigationBar()Z

    move-result v10

    if-eqz v10, :cond_0

    move/from16 v0, p3

    if-ne p1, v0, :cond_1

    .line 1719
    :cond_0
    return-void

    .line 1722
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1723
    .local v4, "lastDisplayRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1724
    .local v2, "displayRect":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1725
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1727
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v8, v10, Landroid/content/res/Configuration;->orientation:I

    .line 1728
    .local v8, "orientation":I
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 1729
    move-object/from16 v0, p4

    invoke-static {v0, v2, v8}, Lcom/android/server/wm/TaskStack;->getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 1730
    return-void

    .line 1733
    :cond_2
    const/4 v10, 0x3

    if-eq p1, v10, :cond_3

    const/4 v10, 0x1

    if-ne p1, v10, :cond_8

    .line 1734
    :cond_3
    const/4 v10, 0x3

    move/from16 v0, p3

    if-eq v0, v10, :cond_4

    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_8

    .line 1735
    :cond_4
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1739
    :goto_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1740
    .local v7, "oldNaviBarRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1741
    .local v6, "newNaviBarRect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1744
    .local v9, "tmpRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 1745
    .local v3, "lastBoundsContainsNaviBar":Z
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-interface {v10, p1, v11, v12, v9}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    .line 1746
    packed-switch p1, :pswitch_data_0

    .line 1760
    :pswitch_0
    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->top:I

    .line 1761
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1762
    const/4 v3, 0x1

    .line 1768
    :cond_5
    :goto_1
    const/4 v5, 0x0

    .line 1769
    .local v5, "newBoundsContainsNaviBar":Z
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    move/from16 v0, p3

    invoke-interface {v10, v0, v11, v12, v9}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    .line 1770
    packed-switch p3, :pswitch_data_1

    .line 1796
    :pswitch_1
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->top:I

    .line 1797
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1798
    const/4 v5, 0x1

    .line 1801
    :cond_6
    if-nez v3, :cond_d

    if-eqz v5, :cond_d

    .line 1802
    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->top:I

    .line 1717
    :cond_7
    :goto_2
    return-void

    .line 1737
    .end local v3    # "lastBoundsContainsNaviBar":Z
    .end local v5    # "newBoundsContainsNaviBar":Z
    .end local v6    # "newNaviBarRect":Landroid/graphics/Rect;
    .end local v7    # "oldNaviBarRect":Landroid/graphics/Rect;
    .end local v9    # "tmpRect":Landroid/graphics/Rect;
    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1748
    .restart local v3    # "lastBoundsContainsNaviBar":Z
    .restart local v6    # "newNaviBarRect":Landroid/graphics/Rect;
    .restart local v7    # "oldNaviBarRect":Landroid/graphics/Rect;
    .restart local v9    # "tmpRect":Landroid/graphics/Rect;
    :pswitch_2
    iget v10, v9, Landroid/graphics/Rect;->left:I

    iput v10, v7, Landroid/graphics/Rect;->right:I

    .line 1749
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1750
    const/4 v3, 0x1

    goto :goto_1

    .line 1754
    :pswitch_3
    iget v10, v7, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->left:I

    .line 1755
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1756
    const/4 v3, 0x1

    goto :goto_1

    .line 1772
    .restart local v5    # "newBoundsContainsNaviBar":Z
    :pswitch_4
    iget v10, v9, Landroid/graphics/Rect;->left:I

    iput v10, v6, Landroid/graphics/Rect;->right:I

    .line 1773
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1774
    const/4 v5, 0x1

    .line 1777
    :cond_9
    if-nez v3, :cond_a

    if-eqz v5, :cond_a

    .line 1778
    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 1779
    :cond_a
    if-eqz v3, :cond_7

    if-nez v5, :cond_7

    .line 1780
    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 1784
    :pswitch_5
    iget v10, v6, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->left:I

    .line 1785
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1786
    const/4 v5, 0x1

    .line 1789
    :cond_b
    if-nez v3, :cond_c

    if-eqz v5, :cond_c

    .line 1790
    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 1791
    :cond_c
    if-eqz v3, :cond_7

    if-nez v5, :cond_7

    .line 1792
    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2

    .line 1803
    :cond_d
    if-eqz v3, :cond_7

    if-nez v5, :cond_7

    .line 1804
    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 1746
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1770
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public adjustBoundsToMagnificationSpec(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2133
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mReduceScreenRunning:Z

    if-eqz v3, :cond_0

    .line 2134
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2135
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    .line 2134
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v2

    .line 2136
    .local v2, "spec":Landroid/view/MagnificationSpec;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2132
    .end local v2    # "spec":Landroid/view/MagnificationSpec;
    :cond_0
    :goto_0
    return-void

    .line 2137
    .restart local v2    # "spec":Landroid/view/MagnificationSpec;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 2138
    .local v1, "dw":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 2139
    .local v0, "dh":I
    iget v3, v2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 2140
    iget v3, v2, Landroid/view/MagnificationSpec;->offsetY:F

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 2141
    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2142
    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public adjustDockedStackBoundAfterDisplaySizeChange(Landroid/graphics/Rect;IF)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "dockSide"    # I
    .param p3, "ratio"    # F

    .prologue
    .line 2816
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    .line 2817
    const-string v0, "MultiWindowManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display change ratio can not be 0 ! Caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    return-void

    .line 2820
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2814
    :goto_0
    return-void

    .line 2822
    :pswitch_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 2825
    :pswitch_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 2828
    :pswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 2831
    :pswitch_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 2820
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public animateFreeformDimLayerLocked(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/DimLayerController$DimLayerState;)Z
    .locals 31
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "state"    # Lcom/android/server/wm/DimLayerController$DimLayerState;

    .prologue
    .line 976
    sget-boolean v27, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v27, :cond_11

    .line 977
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v18

    .line 978
    .local v18, "task":Lcom/android/server/wm/Task;
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    .line 980
    .local v11, "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_0
    if-eqz v11, :cond_11

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v27, v0

    if-eqz v27, :cond_11

    .line 981
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    .line 983
    .local v25, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "token$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/AppWindowToken;

    .line 984
    .local v21, "token":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    move/from16 v27, v0

    if-nez v27, :cond_0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move/from16 v27, v0

    if-nez v27, :cond_0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    move/from16 v27, v0

    if-nez v27, :cond_0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_0

    .line 985
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v24

    .line 986
    .local v24, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    if-nez v27, :cond_0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v27, v0

    if-nez v27, :cond_0

    .line 987
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 988
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 989
    move-object/from16 v25, v24

    .line 994
    .end local v21    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v24    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v26, v0

    .line 995
    .local v26, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 996
    .local v9, "attachedWindowAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 997
    .local v6, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    move-object/from16 v0, v26

    iget-boolean v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 999
    .local v15, "selfTransformation":Z
    if-eqz v9, :cond_a

    iget-boolean v0, v9, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    .line 1000
    iget-object v8, v9, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    .line 1001
    :goto_1
    if-eqz v6, :cond_b

    iget-boolean v0, v6, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    .line 1002
    iget-object v7, v6, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 1004
    :goto_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    .line 1005
    .local v16, "service":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v27, v0

    .line 1006
    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v28

    .line 1005
    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v14

    .line 1007
    .local v14, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v14, :cond_c

    .line 1008
    invoke-virtual {v14}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v13

    .line 1010
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    .line 1011
    .local v20, "tmpMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpFloats:[F

    move-object/from16 v19, v0

    .line 1012
    .local v19, "tmpFloats":[F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpDimBounds:Landroid/graphics/Rect;

    .line 1014
    .local v10, "dimBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1016
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1023
    .local v5, "animAlpha":F
    if-eqz v13, :cond_e

    invoke-virtual {v14}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v27

    if-eqz v27, :cond_e

    .line 1024
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v23, v0

    .line 1025
    .local v23, "w":F
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v12, v0

    .line 1026
    .local v12, "h":F
    const/high16 v27, 0x3f800000    # 1.0f

    cmpl-float v27, v23, v27

    if-ltz v27, :cond_d

    const/high16 v27, 0x3f800000    # 1.0f

    cmpl-float v27, v12, v27

    if-ltz v27, :cond_d

    .line 1027
    const/high16 v27, 0x40000000    # 2.0f

    div-float v27, v27, v23

    const/high16 v28, 0x3f800000    # 1.0f

    add-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    div-float v28, v28, v12

    const/high16 v29, 0x3f800000    # 1.0f

    add-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v29, v23, v29

    const/high16 v30, 0x40000000    # 2.0f

    div-float v30, v12, v30

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1035
    .end local v12    # "h":F
    .end local v23    # "w":F
    :goto_4
    if-eqz v15, :cond_2

    .line 1036
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1037
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v27

    .line 1016
    const/high16 v28, 0x3f800000    # 1.0f

    .line 1037
    mul-float v5, v28, v27

    .line 1040
    :cond_2
    if-eqz v8, :cond_3

    .line 1041
    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1042
    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v27

    mul-float v5, v5, v27

    .line 1045
    :cond_3
    if-eqz v7, :cond_4

    .line 1046
    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1047
    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v27

    mul-float v5, v5, v27

    .line 1050
    :cond_4
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1054
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mReduceScreenRunning:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1055
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v17

    .line 1056
    .local v17, "spec":Landroid/view/MagnificationSpec;
    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v27

    if-eqz v27, :cond_f

    .line 1064
    .end local v17    # "spec":Landroid/view/MagnificationSpec;
    :cond_5
    :goto_5
    if-eqz v13, :cond_6

    .line 1065
    invoke-virtual {v14}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1066
    invoke-virtual {v14}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v27

    mul-float v5, v5, v27

    .line 1069
    :cond_6
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1070
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v27

    if-lez v27, :cond_7

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v27

    if-lez v27, :cond_7

    .line 1071
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/DimLayer;->animateFreeformDimLayer([FF)V

    .line 1074
    :cond_7
    if-nez v13, :cond_8

    if-nez v15, :cond_8

    if-eqz v8, :cond_10

    :cond_8
    const/16 v27, 0x1

    :goto_6
    return v27

    .line 978
    .end local v5    # "animAlpha":F
    .end local v6    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v9    # "attachedWindowAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v10    # "dimBounds":Landroid/graphics/Rect;
    .end local v11    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v15    # "selfTransformation":Z
    .end local v16    # "service":Lcom/android/server/wm/WindowManagerService;
    .end local v19    # "tmpFloats":[F
    .end local v20    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v22    # "token$iterator":Ljava/util/Iterator;
    .end local v25    # "win":Lcom/android/server/wm/WindowState;
    .end local v26    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1000
    .restart local v6    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .restart local v9    # "attachedWindowAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v11    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "selfTransformation":Z
    .restart local v22    # "token$iterator":Ljava/util/Iterator;
    .restart local v25    # "win":Lcom/android/server/wm/WindowState;
    .restart local v26    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_a
    const/4 v8, 0x0

    .local v8, "attachedTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_1

    .line 1002
    .end local v8    # "attachedTransformation":Landroid/view/animation/Transformation;
    :cond_b
    const/4 v7, 0x0

    .local v7, "appTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_2

    .line 1007
    .end local v7    # "appTransformation":Landroid/view/animation/Transformation;
    .restart local v14    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v16    # "service":Lcom/android/server/wm/WindowManagerService;
    :cond_c
    const/4 v13, 0x0

    .local v13, "screenAnimation":Z
    goto/16 :goto_3

    .line 1029
    .end local v13    # "screenAnimation":Z
    .restart local v5    # "animAlpha":F
    .restart local v10    # "dimBounds":Landroid/graphics/Rect;
    .restart local v12    # "h":F
    .restart local v19    # "tmpFloats":[F
    .restart local v20    # "tmpMatrix":Landroid/graphics/Matrix;
    .restart local v23    # "w":F
    :cond_d
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_4

    .line 1032
    .end local v12    # "h":F
    .end local v23    # "w":F
    :cond_e
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_4

    .line 1057
    .restart local v17    # "spec":Landroid/view/MagnificationSpec;
    :cond_f
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v28, v0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1058
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v28, v0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_5

    .line 1074
    .end local v17    # "spec":Landroid/view/MagnificationSpec;
    :cond_10
    if-nez v7, :cond_8

    const/16 v27, 0x0

    goto :goto_6

    .line 1078
    .end local v5    # "animAlpha":F
    .end local v6    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v9    # "attachedWindowAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v10    # "dimBounds":Landroid/graphics/Rect;
    .end local v11    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v15    # "selfTransformation":Z
    .end local v16    # "service":Lcom/android/server/wm/WindowManagerService;
    .end local v18    # "task":Lcom/android/server/wm/Task;
    .end local v19    # "tmpFloats":[F
    .end local v20    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v22    # "token$iterator":Ljava/util/Iterator;
    .end local v25    # "win":Lcom/android/server/wm/WindowState;
    .end local v26    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_11
    const/16 v27, 0x0

    return v27
.end method

.method public appWindowDrawnLocked(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1960
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ScreenFreezeAnimation;->setWindowDrawn(Lcom/android/server/wm/WindowState;)V

    .line 1958
    :cond_0
    return-void
.end method

.method public applyForceHidingAnimation(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2350
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "win$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2351
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v1, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 2353
    .local v1, "visibility":Z
    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v4, :cond_1

    .line 2354
    iput-boolean v6, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 2357
    :cond_1
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_0

    .line 2358
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v4, :cond_2

    .line 2359
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v4, :cond_0

    .line 2363
    :cond_2
    if-eqz v1, :cond_3

    .line 2364
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2365
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 2366
    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 2367
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2368
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 2370
    .end local v0    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2371
    .restart local v0    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 2372
    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 2373
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2374
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 2349
    .end local v0    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "visibility":Z
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    return-void
.end method

.method public applyForceHidingPolicy(Lcom/android/server/wm/WindowState;)V
    .locals 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/high16 v4, 0x4000000

    const/4 v3, 0x1

    .line 2238
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, v2, :cond_1

    .line 2239
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2240
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 2241
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->requestForceHiding:Z

    .line 2240
    if-eqz v1, :cond_1

    .line 2242
    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2248
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_2

    .line 2249
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x900

    if-ne v1, v2, :cond_2

    .line 2250
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    .line 2251
    iput-boolean v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mLocalForceHideFloatingMultiWindow:Z

    .line 2237
    :cond_2
    return-void

    .line 2243
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowManagerInternal;->isVisibleOrBehindKeyguard(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    .line 2240
    if-eqz v1, :cond_1

    .line 2244
    iput-boolean v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mLocalForceHideFloatingMultiWindow:Z

    goto :goto_0
.end method

.method public canBeForceHiddenFloatingMultiWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v3, 0x1

    .line 2274
    if-eqz p1, :cond_1

    .line 2275
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2276
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 2277
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2278
    return v3

    .line 2281
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x8ff

    if-ne v1, v2, :cond_1

    .line 2282
    return v3

    .line 2286
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public checkAppTransitionForForceHiding(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v4, 0x0

    .line 2315
    const/4 v2, 0x0

    .line 2317
    .local v2, "requestForceHidingApp":Lcom/android/server/wm/AppWindowToken;
    iput-boolean v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    .line 2319
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 2320
    .local v0, "app":Lcom/android/server/wm/AppWindowToken;
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v4, :cond_0

    .line 2321
    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2322
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 2323
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->requestForceHiding:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 2324
    const/high16 v5, 0x4000000

    .line 2323
    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 2325
    :cond_1
    move-object v2, v0

    .line 2330
    .end local v0    # "app":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "requestForceHidingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    if-eqz v2, :cond_3

    .line 2331
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    .line 2314
    :cond_3
    return-void
.end method

.method public checkDrawnWindowsFitToScreenForSwapTasks(I)V
    .locals 2
    .param p1, "dockBottom"    # I

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1911
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1912
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ScreenFreezeAnimation;->checkDrawnWindowsFitToScreenForSwapTasks(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1909
    return-void

    .line 1910
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public checkIMEHeightChanged(Z)V
    .locals 1
    .param p1, "IMEHeightChanged"    # Z

    .prologue
    .line 2635
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mhasIMEHeightChanged:Z

    if-eq v0, p1, :cond_0

    .line 2636
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mhasIMEHeightChanged:Z

    .line 2634
    :cond_0
    return-void
.end method

.method public checkIfFullyAdjustedForIME(Lcom/android/server/wm/TaskStack;)V
    .locals 4
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v1, 0x0

    .line 2606
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 2607
    .local v0, "isDockedOnBottom":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isVisibleLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 2608
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getAdjustImeAmount()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsBottomStackFullyAdjustedForIME:Z

    .line 2604
    :cond_1
    return-void

    .line 2606
    .end local v0    # "isDockedOnBottom":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isDockedOnBottom":Z
    goto :goto_0
.end method

.method public checkRequestForceHidingApp(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2337
    monitor-enter p0

    .line 2338
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGrantPermissionComponents:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "component$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2339
    .local v0, "component":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2340
    .local v2, "title":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2341
    const/4 v3, 0x1

    monitor-exit p0

    return v3

    .end local v0    # "component":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_1
    monitor-exit p0

    .line 2345
    const/4 v3, 0x0

    return v3

    .line 2337
    .end local v1    # "component$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public clearFreeformTransit(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, "animatingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_2

    .line 594
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 595
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "atoken$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 596
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 597
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/server/wm/Task;->mFreeformTransit:I

    if-eqz v3, :cond_0

    .line 598
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/wm/Task;->mFreeformTransit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 594
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "atoken$iterator":Ljava/util/Iterator;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "atoken$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 592
    .end local v1    # "atoken$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public clearSlideOriginalBounds()V
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpSlideOriginalBounds:Landroid/graphics/Rect;

    .line 791
    return-void
.end method

.method public completeToggleSplitScreen()V
    .locals 1

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->completeToggleSplitScreen()V

    .line 2555
    return-void
.end method

.method public computeDragResizing(Lcom/android/server/wm/Task;)Z
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    const/4 v3, 0x0

    .line 2616
    if-nez p1, :cond_0

    .line 2617
    return v3

    .line 2620
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2621
    :cond_1
    return v3

    .line 2624
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2625
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    .line 2626
    .local v0, "controller":Lcom/android/server/wm/DockedStackDividerController;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2627
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 2630
    :cond_4
    return v3
.end method

.method public continueReportDrawn()V
    .locals 2

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1242
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->continueReportDrawn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1239
    return-void

    .line 1241
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public createKeepVisibleAnimation()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 290
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 291
    .local v0, "a":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x150

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 293
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    .line 295
    .local v1, "transit":I
    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 296
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 300
    .end local v1    # "transit":I
    :cond_0
    new-instance v2, Lcom/android/server/wm/MultiWindowManagerInternal$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/MultiWindowManagerInternal$1;-><init>(Lcom/android/server/wm/MultiWindowManagerInternal;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 312
    return-object v0
.end method

.method public deferReportDrawn()V
    .locals 2

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1233
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->deferReportDrawn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1230
    return-void

    .line 1232
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public drawFreeformRoundedDim(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)V
    .locals 15
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "dimSurfaceControl"    # Landroid/view/SurfaceControl;
    .param p3, "dimBounds"    # Landroid/graphics/Rect;
    .param p4, "dimType"    # I

    .prologue
    .line 926
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v10}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v6

    .line 928
    .local v6, "isDesktopMode":Z
    iget v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRoundedCorner:F

    .line 929
    .local v2, "dimRadius":F
    if-nez v6, :cond_0

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/server/wm/Task;->mSupportFreefromDensity:Z

    if-eqz v10, :cond_0

    .line 930
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 932
    .local v9, "serviceConfig":Landroid/content/res/Configuration;
    iget v10, v9, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v11, v9, Landroid/content/res/Configuration;->densityDpi:I

    .line 931
    invoke-static {v10, v11}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->getFreeformDensity(II)I

    move-result v5

    .line 934
    .local v5, "freeformDensityDpi":I
    if-lez v5, :cond_0

    .line 935
    iget v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRoundedCorner:F

    iget v11, v9, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    int-to-float v11, v5

    mul-float v2, v10, v11

    .line 944
    .end local v5    # "freeformDensityDpi":I
    .end local v9    # "serviceConfig":Landroid/content/res/Configuration;
    :cond_0
    :try_start_0
    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7}, Landroid/view/Surface;-><init>()V

    .line 945
    .local v7, "outSurface":Landroid/view/Surface;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 947
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 948
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 949
    .local v8, "paint":Landroid/graphics/Paint;
    const/high16 v10, -0x1000000

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 950
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 951
    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_1

    .line 953
    new-instance v10, Landroid/graphics/RectF;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 952
    invoke-virtual {v1, v10, v2, v2, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 959
    :goto_0
    invoke-virtual {v7, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 960
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    .line 925
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "outSurface":Landroid/view/Surface;
    .end local v8    # "paint":Landroid/graphics/Paint;
    :goto_1
    return-void

    .line 957
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "outSurface":Landroid/view/Surface;
    .restart local v8    # "paint":Landroid/graphics/Paint;
    :cond_1
    new-instance v10, Landroid/graphics/RectF;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 956
    invoke-virtual {v1, v10, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 961
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "outSurface":Landroid/view/Surface;
    .end local v8    # "paint":Landroid/graphics/Paint;
    :catch_0
    move-exception v4

    .line 962
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 963
    const-string v10, "MultiWindowManagerInternal"

    const-string v11, "showFreeformRoundedDim IllegalExeption"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 964
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 965
    .local v3, "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-virtual {v3}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V

    .line 966
    const-string v10, "MultiWindowManagerInternal"

    const-string v11, "showFreeformRoundedDim ResourceException"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Z)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .prologue
    .line 3560
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_0

    .line 3561
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ScreenFreezeAnimation;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 3558
    :cond_0
    return-void
.end method

.method public ensureDockedResize(Landroid/graphics/Rect;Z)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "adjustForIme"    # Z

    .prologue
    .line 1492
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1494
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    .line 1495
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedBounds:Landroid/graphics/Rect;

    .line 1494
    const/16 v3, 0xe

    .line 1495
    const/4 v4, 0x3

    .line 1494
    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1491
    :cond_0
    return-void

    .line 1495
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureDockedStackVisible()V
    .locals 2

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1510
    return-void
.end method

.method public enterDockedTask(Lcom/android/server/wm/Task;I)V
    .locals 15
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "createMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 416
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v8

    .line 418
    .local v8, "dockSide":I
    const/4 v9, 0x0

    .line 420
    .local v9, "otherStackPackageName":Ljava/lang/String;
    const/4 v1, -0x1

    if-eq v8, v1, :cond_6

    .line 421
    const/4 v1, 0x1

    if-eq v8, v1, :cond_0

    const/4 v1, 0x2

    if-ne v8, v1, :cond_3

    .line 422
    :cond_0
    if-nez p2, :cond_3

    .line 427
    :cond_1
    const/4 v1, 0x1

    .line 426
    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleAppWindowPackageName(I)Ljava/lang/String;

    move-result-object v9

    .line 429
    .local v9, "otherStackPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 430
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 431
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    .line 429
    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z

    .line 442
    :goto_0
    const-string v1, "FFAC"

    .line 443
    const-string v2, "ChangeToSplit"

    .line 442
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .end local v9    # "otherStackPackageName":Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_2

    .line 498
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wm/MultiWindowManagerInternal;->logByFreeformDraggingToSplit(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 415
    .end local v8    # "dockSide":I
    :cond_2
    return-void

    .line 423
    .restart local v8    # "dockSide":I
    .local v9, "otherStackPackageName":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x3

    if-eq v8, v1, :cond_4

    const/4 v1, 0x4

    if-ne v8, v1, :cond_5

    .line 424
    :cond_4
    const/4 v1, 0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_1

    .line 435
    :cond_5
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleAppWindowPackageName(I)Ljava/lang/String;

    move-result-object v9

    .line 437
    .local v9, "otherStackPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 438
    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 437
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V

    goto :goto_0

    .line 447
    .local v9, "otherStackPackageName":Ljava/lang/String;
    :cond_6
    const/4 v12, 0x0

    .line 448
    .local v12, "topTask":Lcom/android/server/wm/Task;
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 449
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleTaskLocked(I)Lcom/android/server/wm/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .local v12, "topTask":Lcom/android/server/wm/Task;
    monitor-exit v1

    .line 451
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 457
    :cond_7
    const/4 v1, 0x1

    .line 456
    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleAppWindowPackageName(I)Ljava/lang/String;

    move-result-object v9

    .line 461
    .local v9, "otherStackPackageName":Ljava/lang/String;
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_c

    .line 462
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsFreeformDockingLeftOrBottom:Z

    .line 464
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v11, "targetWindowTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v1, v12, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "wtoken$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    .line 466
    .local v13, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 448
    .end local v11    # "targetWindowTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v13    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v14    # "wtoken$iterator":Ljava/util/Iterator;
    .local v9, "otherStackPackageName":Ljava/lang/String;
    .local v12, "topTask":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 452
    .local v12, "topTask":Lcom/android/server/wm/Task;
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 453
    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 452
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V

    goto :goto_1

    .line 468
    .local v9, "otherStackPackageName":Ljava/lang/String;
    .restart local v11    # "targetWindowTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v14    # "wtoken$iterator":Ljava/util/Iterator;
    :cond_9
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    .line 469
    .restart local v13    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 472
    .end local v13    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_a
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v10, "targetTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    .line 474
    .restart local v13    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v13, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 477
    .end local v13    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 478
    const-string v1, "enter_dock"

    const/4 v2, 0x2

    invoke-virtual {p0, v10, v2, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 481
    iget v2, v12, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v3, 0x0

    .line 482
    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 483
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 480
    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z

    .line 484
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V

    .line 485
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsFreeformDockingLeftOrBottom:Z

    .line 486
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    goto/16 :goto_1

    .line 489
    .end local v10    # "targetTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v11    # "targetWindowTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v14    # "wtoken$iterator":Ljava/util/Iterator;
    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 490
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 491
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    .line 489
    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z

    goto/16 :goto_1
.end method

.method public enterFreeformTask(Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;)V
    .locals 21
    .param p1, "resizeInfo"    # Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;

    .prologue
    .line 317
    sget-boolean v15, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v15, :cond_9

    .line 318
    if-nez p1, :cond_0

    .line 319
    const-string v15, "MultiWindowManagerInternal"

    const-string v16, "enterFreeformTask: resizeInfo is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 322
    :cond_0
    const/4 v5, 0x0

    .line 323
    .local v5, "canBeResize":Z
    const/4 v11, -0x1

    .line 324
    .local v11, "stackId":I
    const/4 v14, 0x0

    .line 325
    .local v14, "topVisibleWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 326
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;->mTaskId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Task;

    .line 327
    .local v12, "task":Lcom/android/server/wm/Task;
    if-nez v12, :cond_1

    .line 328
    const-string v15, "MultiWindowManagerInternal"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "enterFreeformTask: task is null, taskId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;->mTaskId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v16

    .line 329
    return-void

    .line 332
    :cond_1
    :try_start_1
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v13

    .line 333
    .local v13, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v14

    .line 334
    .end local v14    # "topVisibleWin":Lcom/android/server/wm/WindowState;
    :goto_0
    if-nez v14, :cond_3

    .line 335
    const-string v15, "MultiWindowManagerInternal"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "enterFreeformTask: top visible win is null, task="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v16

    .line 336
    return-void

    .line 333
    .restart local v14    # "topVisibleWin":Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 339
    .end local v14    # "topVisibleWin":Lcom/android/server/wm/WindowState;
    :cond_3
    :try_start_2
    iget-object v15, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v15, v0, :cond_4

    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->waitingForReplacement()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 340
    :cond_4
    const-string v15, "MultiWindowManagerInternal"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "enterFreeformTask: top visible win is starting, pending task="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    move-object/from16 v17, v0

    .line 342
    iget v0, v12, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v18, v0

    const/16 v19, 0xb

    const/16 v20, 0x0

    .line 341
    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    .line 343
    const-wide/16 v18, 0xbb8

    .line 341
    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 344
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskIdToResizeInfo:Ljava/util/HashMap;

    iget v0, v12, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v16

    .line 345
    return-void

    .line 348
    :cond_5
    :try_start_3
    iget-object v15, v12, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v11, v15, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 349
    iget-object v15, v12, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v15, :cond_a

    iget-object v15, v12, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v15, v15, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v15, v0, :cond_6

    iget-object v15, v12, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v15, v15, Lcom/android/server/wm/TaskStack;->mStackId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_a

    :cond_6
    const/4 v5, 0x1

    :goto_1
    monitor-exit v16

    .line 352
    if-eqz v5, :cond_9

    .line 353
    new-instance v9, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v9}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    .line 354
    .local v9, "mw":Lcom/samsung/android/multiwindow/MultiWindowManager;
    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;->mTaskId:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setLaunchBounds(ILandroid/graphics/Rect;)V

    .line 357
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerPerformance;->getBooster()Lcom/android/server/am/ActivityManagerPerformance;

    move-result-object v4

    .line 358
    .local v4, "booster":Lcom/android/server/am/ActivityManagerPerformance;
    if-eqz v4, :cond_7

    .line 359
    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/android/server/am/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/am/ActivityRecord;Z)V

    .line 361
    :cond_7
    const/4 v15, 0x2

    new-array v8, v15, [Ljava/lang/String;

    .line 362
    .local v8, "features":[Ljava/lang/String;
    const/4 v15, 0x2

    new-array v7, v15, [Ljava/lang/String;

    .line 363
    .local v7, "extras":[Ljava/lang/String;
    const-string v15, "FFBY"

    const/16 v16, 0x0

    aput-object v15, v8, v16

    .line 364
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 365
    const-string v15, "DividerButton"

    const/16 v16, 0x0

    aput-object v15, v7, v16

    .line 369
    :goto_2
    const-string v15, "FFEP"

    const/16 v16, 0x1

    aput-object v15, v8, v16

    .line 370
    iget-object v15, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v15, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v15, v7, v16

    .line 371
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v7}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;->mTaskId:I

    move/from16 v16, v0

    const/16 v17, 0x2

    const/16 v18, 0x1

    invoke-interface/range {v15 .. v18}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V

    .line 375
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/TaskStack;

    .line 377
    .local v10, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_8

    .line 378
    const/4 v15, 0x1

    if-ne v11, v15, :cond_c

    .line 379
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->moveDockedTasksToFullscreenStack(ZZ)Z

    .line 384
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/16 v16, 0x2

    invoke-interface/range {v15 .. v16}, Landroid/app/IActivityManager;->setFocusedStack(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 316
    .end local v4    # "booster":Lcom/android/server/am/ActivityManagerPerformance;
    .end local v5    # "canBeResize":Z
    .end local v7    # "extras":[Ljava/lang/String;
    .end local v8    # "features":[Ljava/lang/String;
    .end local v9    # "mw":Lcom/samsung/android/multiwindow/MultiWindowManager;
    .end local v10    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v11    # "stackId":I
    .end local v12    # "task":Lcom/android/server/wm/Task;
    .end local v13    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_9
    :goto_4
    return-void

    .line 349
    .restart local v5    # "canBeResize":Z
    .restart local v11    # "stackId":I
    .restart local v12    # "task":Lcom/android/server/wm/Task;
    .restart local v13    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 325
    .end local v12    # "task":Lcom/android/server/wm/Task;
    .end local v13    # "token":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 367
    .restart local v4    # "booster":Lcom/android/server/am/ActivityManagerPerformance;
    .restart local v7    # "extras":[Ljava/lang/String;
    .restart local v8    # "features":[Ljava/lang/String;
    .restart local v9    # "mw":Lcom/samsung/android/multiwindow/MultiWindowManager;
    .restart local v12    # "task":Lcom/android/server/wm/Task;
    .restart local v13    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_b
    :try_start_5
    const-string v15, "Gesture"

    const/16 v16, 0x0

    aput-object v15, v7, v16
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 385
    .end local v4    # "booster":Lcom/android/server/am/ActivityManagerPerformance;
    .end local v7    # "extras":[Ljava/lang/String;
    .end local v8    # "features":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 386
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 380
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v4    # "booster":Lcom/android/server/am/ActivityManagerPerformance;
    .restart local v7    # "extras":[Ljava/lang/String;
    .restart local v8    # "features":[Ljava/lang/String;
    .restart local v10    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_c
    const/4 v15, 0x3

    if-ne v11, v15, :cond_8

    .line 381
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/16 v16, 0x3

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/app/IActivityManager;->moveTasksToFullscreenStack(IZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3
.end method

.method public enterFreeformTaskIfNeededLocked(I)V
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    .line 394
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskIdToResizeInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;

    .line 396
    .local v0, "resizeInfo":Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;
    if-eqz v0, :cond_1

    .line 397
    sget-boolean v1, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiWindowManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter freeform pending task, taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskIdToResizeInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 393
    .end local v0    # "resizeInfo":Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;
    :cond_1
    return-void
.end method

.method public executeFakedRelaunchAnimationLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 9
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/16 v6, 0x8

    const/4 v8, 0x0

    .line 1966
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_4

    .line 1967
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1968
    const-string v3, "MultiWindowManagerInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeFakedRelaunchAnimationLocked: display isn\'t ready, displayFrozen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1969
    const-string v5, ", mPolicy.isScreenOn="

    .line 1968
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1969
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v5

    .line 1968
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    return-void

    .line 1973
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->removeMessages(I)V

    .line 1974
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    .line 1975
    const-wide/16 v4, 0x7d0

    .line 1974
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->sendEmptyMessageDelayed(IJ)Z

    .line 1977
    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 1978
    .local v1, "task":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    .line 1980
    .local v2, "top":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_2

    .line 1981
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 1982
    .local v2, "top":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_2

    .line 1983
    sget-boolean v3, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    if-eqz v3, :cond_1

    const-string v3, "MultiWindowManagerInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeFakedRelaunchAnimationLocked, wtoken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_1
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    .line 1986
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowManagerInternal;->addFakedRelaunchAnimTokensLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 1987
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1989
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1990
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 1991
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 1990
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    .line 1994
    .end local v0    # "frame":Landroid/graphics/Rect;
    .end local v2    # "top":Lcom/android/server/wm/WindowState;
    :cond_2
    if-nez v2, :cond_3

    .line 1995
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v8, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1997
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1965
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_4
    return-void
.end method

.method public exludedRegionFromFreefomTasksLocked(Landroid/graphics/Region;)V
    .locals 9
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .prologue
    .line 1127
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v7, :cond_2

    .line 1128
    if-eqz p1, :cond_2

    .line 1129
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1130
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1131
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "stack$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 1132
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget v7, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->isForceHidingFloatingMultiWindow()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1133
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "task$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 1134
    .local v4, "task":Lcom/android/server/wm/Task;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1135
    .local v6, "tmpRect":Landroid/graphics/Rect;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, v4, Lcom/android/server/wm/Task;->mHiddenState:I

    if-nez v7, :cond_1

    .line 1136
    invoke-virtual {v4, v6}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 1137
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    .line 1126
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "stack$iterator":Ljava/util/Iterator;
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "task$iterator":Ljava/util/Iterator;
    .end local v6    # "tmpRect":Landroid/graphics/Rect;
    :cond_2
    return-void
.end method

.method public findMaxVisibleAppWindow(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 2657
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->findMaxVisibleAppWindow(Lcom/android/server/wm/AppWindowToken;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method public findMaxVisibleAppWindow(Lcom/android/server/wm/AppWindowToken;Z)Lcom/android/server/wm/WindowState;
    .locals 6
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "includeCaptionWindow"    # Z

    .prologue
    .line 2662
    const/4 v2, 0x0

    .line 2663
    .local v2, "maxWindow":Lcom/android/server/wm/WindowState;
    const/4 v0, 0x0

    .line 2665
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    .end local v2    # "maxWindow":Lcom/android/server/wm/WindowState;
    .local v1, "i":I
    :goto_0
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 2666
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2667
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v4, :cond_2

    .line 2668
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 2669
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 2671
    :cond_0
    if-nez p2, :cond_1

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v4, v4, 0x100

    if-nez v4, :cond_2

    .line 2673
    :cond_1
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v4, :cond_4

    .line 2674
    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2675
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v4, v5, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 2665
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2678
    :cond_3
    move-object v0, v3

    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    goto :goto_1

    .line 2680
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    :cond_4
    if-eqz v2, :cond_5

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2681
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v4, v5, :cond_5

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2684
    :cond_5
    move-object v2, v3

    .local v2, "maxWindow":Lcom/android/server/wm/WindowState;
    goto :goto_1

    .line 2688
    .end local v2    # "maxWindow":Lcom/android/server/wm/WindowState;
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_6
    if-eqz v2, :cond_7

    .line 2689
    return-object v2

    .line 2691
    :cond_7
    return-object v0
.end method

.method public forceHideIMEWhileDragging()V
    .locals 2

    .prologue
    .line 2591
    const-class v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 2592
    .local v0, "inputMethodManagerInternal":Landroid/view/inputmethod/InputMethodManagerInternal;
    if-eqz v0, :cond_1

    .line 2593
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->isDividerDragging()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsSoftInputForceHidden:Z

    if-eqz v1, :cond_2

    .line 2596
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsSoftInputForceHidden:Z

    if-eqz v1, :cond_1

    .line 2597
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsSoftInputForceHidden:Z

    .line 2588
    :cond_1
    :goto_0
    return-void

    .line 2594
    :cond_2
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    .line 2595
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsSoftInputForceHidden:Z

    goto :goto_0
.end method

.method public getAppWindowAnimatingState()Z
    .locals 1

    .prologue
    .line 3554
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mAppWindowAnimating:Z

    return v0
.end method

.method public getCurrentInputMethodClient()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getDecorCaptionWindowHeight()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mDecorCaptionWindowHeight:I

    return v0
.end method

.method public getDividerSize()I
    .locals 2

    .prologue
    .line 3525
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3526
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 3527
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v1

    return v1

    .line 3529
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getDockedStackVisibleForUserOrRelaunchingLocked(I)Lcom/android/server/wm/TaskStack;
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2455
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 2456
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez p1, :cond_1

    .line 2457
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->isVisibleLocked(Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->hasRelaunchingAppWindowTokenLocked(Lcom/android/server/wm/TaskStack;)Z

    move-result v2

    .line 2456
    if-eqz v2, :cond_1

    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    move-object v0, v1

    .line 2457
    goto :goto_0
.end method

.method public getFreeformRelaunchAnimState()I
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 526
    :try_start_0
    iget v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRelaunchAnimState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 525
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getFullScreenStackTopTaskBounds(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1362
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v2, :cond_1

    .line 1363
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1364
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1365
    .local v0, "targetAppToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 1366
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 1367
    .local v1, "targetWin":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    .line 1368
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .end local v1    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_0
    monitor-exit v3

    .line 1373
    .end local v0    # "targetAppToken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    return-object v2

    .line 1363
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    return-object v0
.end method

.method public getImeTargetFreeformTaskId()I
    .locals 3

    .prologue
    .line 2697
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2698
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    .line 2699
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    .line 2700
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v1

    .line 2698
    if-eqz v1, :cond_0

    .line 2701
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2702
    .local v0, "imeTargetTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2703
    iget v1, v0, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    .end local v0    # "imeTargetTask":Lcom/android/server/wm/Task;
    :cond_0
    monitor-exit v2

    .line 2708
    const/4 v1, -0x1

    return v1

    .line 2697
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getIndexOfFreeformStackLocked()I
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getIndexOfFreeformStackLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    return v0
.end method

.method public getIndexOfFreeformStackLocked(Lcom/android/server/wm/DisplayContent;)I
    .locals 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 1083
    const/4 v1, -0x1

    .line 1084
    .local v1, "idxFreeform":I
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1085
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1086
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    .line 1087
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    iget v4, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1088
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1089
    move v1, v0

    .line 1094
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    return v1

    .line 1085
    .restart local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getMiddleTargetDockedBounds(Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 1313
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v2, :cond_0

    .line 1314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1315
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    .line 1316
    .local v12, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v5

    .line 1317
    .local v5, "dividerSize":I
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1318
    .local v3, "displayWidth":I
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v4, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1319
    .local v4, "displayHeight":I
    if-ge v3, v4, :cond_1

    const/4 v13, 0x2

    .line 1322
    .local v13, "dockSide":I
    :goto_0
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v15, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 1323
    .local v15, "rotation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1324
    .local v14, "orientation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p1

    invoke-interface {v2, v15, v3, v4, v0}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    .line 1325
    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1327
    const/4 v6, 0x1

    if-ne v14, v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v7, p1

    .line 1325
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    .line 1328
    .local v1, "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v16

    .line 1331
    .local v16, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    move v7, v13

    move-object/from16 v8, p1

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v17

    .line 1312
    .end local v1    # "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    .end local v3    # "displayWidth":I
    .end local v4    # "displayHeight":I
    .end local v5    # "dividerSize":I
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v13    # "dockSide":I
    .end local v14    # "orientation":I
    .end local v15    # "rotation":I
    .end local v16    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_0
    return-void

    .line 1319
    .restart local v3    # "displayWidth":I
    .restart local v4    # "displayHeight":I
    .restart local v5    # "dividerSize":I
    .restart local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1
    const/4 v13, 0x1

    .restart local v13    # "dockSide":I
    goto :goto_0

    .line 1327
    .restart local v14    # "orientation":I
    .restart local v15    # "rotation":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 1314
    .end local v3    # "displayWidth":I
    .end local v4    # "displayHeight":I
    .end local v5    # "dividerSize":I
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v13    # "dockSide":I
    .end local v14    # "orientation":I
    .end local v15    # "rotation":I
    :catchall_0
    move-exception v2

    monitor-exit v17

    throw v2
.end method

.method public getMinimalDockedTaskBounds()Landroid/graphics/Rect;
    .locals 8

    .prologue
    .line 1518
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 1519
    :try_start_0
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    if-eqz v4, :cond_0

    .line 1520
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1521
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    .line 1522
    .local v0, "controller":Lcom/android/server/wm/DockedStackDividerController;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v2, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1523
    .local v2, "displayWidth":I
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DockedStackDividerController;->getMinimalSizeResizableTask(I)I

    move-result v3

    .line 1524
    .local v3, "minimalSize":I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    .line 1526
    .end local v0    # "controller":Lcom/android/server/wm/DockedStackDividerController;
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "displayWidth":I
    .end local v3    # "minimalSize":I
    :cond_0
    :try_start_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v4

    .line 1518
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getMinimizeContainerBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 2157
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getMinimizeSoftInput()Z
    .locals 1

    .prologue
    .line 2442
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeSoftInput:Z

    return v0
.end method

.method public getMultiWindowPointerEventListener(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/IMultiWindowManagerInternalBridge$IMultiWindowPointerEventListener;
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 506
    new-instance v0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    return-object v0
.end method

.method public getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;
    .locals 4

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-nez v0, :cond_0

    .line 1703
    new-instance v0, Lcom/android/server/wm/ScreenFreezeAnimation;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/wm/ScreenFreezeAnimation;-><init>(Landroid/content/Context;Landroid/view/SurfaceSession;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MultiWindowManagerInternal;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    .line 1705
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    return-object v0
.end method

.method public getSnapTargetAspectRatioRect(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 1379
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v2, :cond_1

    .line 1380
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1381
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1382
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 1383
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 1384
    .local v1, "w":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/view/IWindowStateBridge;->isConventionalMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1385
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/view/IWindowStateBridge;->getAspectRatioFrame()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    monitor-exit v3

    .line 1390
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return-object v4

    .line 1380
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getSpecificTargetDockedBounds(ILandroid/graphics/Rect;)V
    .locals 18
    .param p1, "type"    # I
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 1533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1534
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    .line 1535
    .local v12, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v5

    .line 1536
    .local v5, "dividerSize":I
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1537
    .local v3, "displayWidth":I
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v4, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1538
    .local v4, "displayHeight":I
    if-ge v3, v4, :cond_0

    const/4 v13, 0x2

    .line 1540
    .local v13, "dockSide":I
    :goto_0
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v15, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 1541
    .local v15, "rotation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1542
    .local v14, "orientation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p2

    invoke-interface {v2, v15, v3, v4, v0}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    .line 1543
    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1545
    const/4 v6, 0x1

    if-ne v14, v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v7, p2

    .line 1543
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1546
    .local v1, "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    const/16 v16, 0x0

    .line 1548
    .local v16, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    packed-switch p1, :pswitch_data_0

    .line 1562
    .end local v16    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :goto_2
    if-nez v16, :cond_2

    monitor-exit v17

    .line 1563
    return-void

    .line 1538
    .end local v1    # "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    .end local v13    # "dockSide":I
    .end local v14    # "orientation":I
    .end local v15    # "rotation":I
    :cond_0
    const/4 v13, 0x1

    .restart local v13    # "dockSide":I
    goto :goto_0

    .line 1545
    .restart local v14    # "orientation":I
    .restart local v15    # "rotation":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1550
    .restart local v1    # "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    .restart local v16    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :pswitch_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v16

    .local v16, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    goto :goto_2

    .line 1553
    .local v16, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v16

    .local v16, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    goto :goto_2

    .line 1556
    .local v16, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v16

    .local v16, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    goto :goto_2

    .line 1566
    .end local v16    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_2
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    move v7, v13

    move-object/from16 v8, p2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v17

    .line 1532
    return-void

    .line 1533
    .end local v1    # "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    .end local v3    # "displayWidth":I
    .end local v4    # "displayHeight":I
    .end local v5    # "dividerSize":I
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v13    # "dockSide":I
    .end local v14    # "orientation":I
    .end local v15    # "rotation":I
    :catchall_0
    move-exception v2

    monitor-exit v17

    throw v2

    .line 1548
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getStableInsets(IIILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "rotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 3534
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3535
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3533
    return-void

    .line 3534
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getStackBehindFreeformLocked()Lcom/android/server/wm/TaskStack;
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getStackBehindFreeformLocked(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method public getStackBehindFreeformLocked(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/TaskStack;
    .locals 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v4, 0x0

    .line 1104
    if-nez p1, :cond_0

    .line 1105
    return-object v4

    .line 1108
    :cond_0
    const/4 v1, -0x1

    .line 1109
    .local v1, "idxFreeform":I
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v2

    .line 1110
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1111
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    iget v3, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 1112
    move v1, v0

    .line 1117
    :cond_1
    if-lez v1, :cond_3

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    :goto_1
    return-object v3

    .line 1110
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 1117
    goto :goto_1
.end method

.method public getStackIdsShowWhenLocked()I
    .locals 8

    .prologue
    .line 2206
    const/4 v2, 0x0

    .line 2208
    .local v2, "stackIds":I
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 2209
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 2210
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2211
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 2212
    .local v4, "ws":Lcom/android/server/wm/WindowState;
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_0

    .line 2213
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x80000

    and-int/2addr v5, v7

    if-eqz v5, :cond_0

    .line 2214
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStackId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2215
    .local v1, "stackId":I
    const/4 v5, 0x1

    shl-int/2addr v5, v1

    or-int/2addr v2, v5

    .line 2210
    .end local v1    # "stackId":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v4    # "ws":Lcom/android/server/wm/WindowState;
    :cond_1
    monitor-exit v6

    .line 2220
    return v2

    .line 2208
    .end local v0    # "i":I
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getTopVisibleAppWindowPackageName(I)Ljava/lang/String;
    .locals 6
    .param p1, "stackId"    # I

    .prologue
    .line 3423
    const/4 v1, 0x0

    .line 3424
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3425
    .local v2, "topTask":Lcom/android/server/wm/Task;
    const/4 v3, 0x0

    .line 3426
    .local v3, "topWin":Lcom/android/server/wm/WindowState;
    const/4 v0, 0x0

    .line 3428
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 3429
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleTaskLocked(I)Lcom/android/server/wm/Task;

    move-result-object v2

    .local v2, "topTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_0

    .line 3430
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .local v3, "topWin":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_0

    .line 3431
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 3432
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "topWin":Lcom/android/server/wm/WindowState;
    :cond_0
    monitor-exit v5

    .line 3435
    return-object v1

    .line 3428
    .end local v2    # "topTask":Lcom/android/server/wm/Task;
    .restart local v1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getTopVisibleTaskLocked(I)Lcom/android/server/wm/Task;
    .locals 6
    .param p1, "stackId"    # I

    .prologue
    const/4 v5, 0x0

    .line 1184
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    if-eqz v4, :cond_0

    .line 1185
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 1186
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isVisibleLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1187
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 1188
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1198
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_0
    return-object v5

    .line 1189
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v2    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1190
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 1191
    .local v3, "topVisibleTask":Lcom/android/server/wm/Task;
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1192
    return-object v3

    .line 1189
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getTopVisibleWindowLocked(I)Lcom/android/server/wm/WindowState;
    .locals 6
    .param p1, "stackId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2114
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    if-eqz v5, :cond_2

    .line 2115
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2116
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 2117
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :goto_0
    if-eqz v2, :cond_2

    .line 2118
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 2119
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 2120
    .local v3, "topTask":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2121
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    .line 2120
    if-eqz v5, :cond_1

    .line 2122
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    return-object v4

    .end local v0    # "i":I
    .end local v2    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v3    # "topTask":Lcom/android/server/wm/Task;
    :cond_0
    move-object v2, v4

    .line 2116
    goto :goto_0

    .line 2118
    .restart local v0    # "i":I
    .restart local v2    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .restart local v3    # "topTask":Lcom/android/server/wm/Task;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2127
    .end local v0    # "i":I
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v3    # "topTask":Lcom/android/server/wm/Task;
    :cond_2
    return-object v4
.end method

.method public getTouchExcludeRegionLocked(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V
    .locals 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .prologue
    .line 2381
    if-eqz p1, :cond_2

    .line 2382
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 2383
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 2384
    .local v1, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2385
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2386
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    .line 2384
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2391
    :cond_1
    iget-object v4, p1, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2392
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq v2, v4, :cond_0

    .line 2393
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7f2

    if-eq v4, v5, :cond_0

    .line 2394
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x8fe

    if-eq v4, v5, :cond_0

    .line 2399
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v4}, Lcom/android/server/wm/MultiWindowManagerInternal;->isEasyOneHandWindow(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2404
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2380
    .end local v0    # "i":I
    .end local v1    # "touchableRegion":Landroid/graphics/Region;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_2
    return-void

    .line 2408
    .restart local v0    # "i":I
    .restart local v1    # "touchableRegion":Landroid/graphics/Region;
    .restart local v2    # "win":Lcom/android/server/wm/WindowState;
    .restart local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2409
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_1
.end method

.method public handleScreenFreezeAnimationReady()I
    .locals 1

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1951
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    .line 1950
    if-eqz v0, :cond_1

    .line 1952
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1954
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->handleMultiWindowTransitionReady()I

    move-result v0

    return v0
.end method

.method public hasDockedStack()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1481
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1482
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 1483
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v2

    return v1

    .line 1481
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hasFakedRelaunchAnimTokensLocked(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 2003
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIMEHeightChanged()Z
    .locals 1

    .prologue
    .line 2652
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mhasIMEHeightChanged:Z

    return v0
.end method

.method public hasRelaunchingAppWindowTokenLocked(Lcom/android/server/wm/Task;)Z
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    const/4 v3, 0x0

    .line 2841
    if-eqz p1, :cond_1

    .line 2842
    iget-object v2, p1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "appTokenIdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2843
    iget-object v2, p1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 2844
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2845
    const/4 v2, 0x1

    return v2

    .line 2842
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2849
    .end local v0    # "appToken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "appTokenIdx":I
    :cond_1
    return v3
.end method

.method public isAnimatingForMinimizedDockedStack(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 2793
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2794
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2796
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 2797
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->isAnimatingForMinimizedDockedStack()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    .line 2802
    const/4 v1, 0x0

    return v1

    .line 2793
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isAppTaskTouchedLocked(Lcom/android/server/wm/DisplayContent;II)Z
    .locals 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 2226
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/MultiWindowManagerInternal;->getWindowFromPoint(Lcom/android/server/wm/DisplayContent;II)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2227
    .local v0, "targetWin":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isAutoResizeAnimating()Z
    .locals 1

    .prologue
    .line 2172
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mAutoResizeAnimating:Z

    return v0
.end method

.method public isBottomStackFullyAdjustedForIME()Z
    .locals 1

    .prologue
    .line 2642
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsBottomStackFullyAdjustedForIME:Z

    return v0
.end method

.method public isDividerDragging()Z
    .locals 1

    .prologue
    .line 2582
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsDividerDragging:Z

    return v0
.end method

.method public isEnsureDockedResizing()Z
    .locals 1

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedResizing:Z

    return v0
.end method

.method public isExpandedDockedStack()Z
    .locals 6

    .prologue
    .line 1467
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 1468
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1469
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    .line 1470
    .local v0, "controller":Lcom/android/server/wm/DockedStackDividerController;
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v2

    .line 1471
    .local v2, "dockMinimized":Z
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1472
    .local v3, "dockVisible":Z
    :goto_0
    if-nez v2, :cond_1

    .end local v3    # "dockVisible":Z
    :goto_1
    monitor-exit v5

    return v3

    .line 1471
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "dockVisible":Z
    goto :goto_0

    .line 1472
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1467
    .end local v0    # "controller":Lcom/android/server/wm/DockedStackDividerController;
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "dockMinimized":Z
    .end local v3    # "dockVisible":Z
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public isForceHidingFloatingMultiWindow()Z
    .locals 1

    .prologue
    .line 2264
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    return v0
.end method

.method public isFreeformAlphaModeLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v0, 0x0

    .line 1444
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_2

    .line 1445
    if-nez p1, :cond_0

    .line 1446
    return v0

    .line 1448
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mFreeformAlphaMode:Z

    :cond_1
    return v0

    .line 1450
    :cond_2
    return v0
.end method

.method public isFreeformDockingLeftOrBottom()Z
    .locals 1

    .prologue
    .line 2647
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsFreeformDockingLeftOrBottom:Z

    return v0
.end method

.method public isFreeformStackVisibleLocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1670
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v2, :cond_2

    .line 1671
    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFeeformAlwaysVisible:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTemporaryInvisible:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1673
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTemporaryInvisible:Z

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public isMouseConnectedForDesktopMode()Z
    .locals 1

    .prologue
    .line 770
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 772
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMouseConnectedForDesktopMode:Z

    return v0

    .line 774
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOrientationChanging()Z
    .locals 1

    .prologue
    .line 3402
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mOrientationChanging:Z

    return v0
.end method

.method public isScreenFreezeAnimationSet()Z
    .locals 2

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1929
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 1933
    const/4 v0, 0x0

    return v0

    .line 1928
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isSnapTargetHideStatusbar()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1409
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v3, :cond_1

    .line 1410
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1411
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 1412
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    monitor-exit v4

    .line 1420
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    return v6

    .line 1413
    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1414
    .local v1, "t":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 1415
    .local v2, "w":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    monitor-exit v4

    .line 1416
    return v7

    .line 1410
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "t":Lcom/android/server/wm/Task;
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isSnapTargetTranslucentNavigationBar()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1426
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v4, :cond_1

    .line 1427
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 1428
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 1429
    .local v0, "docked":Lcom/android/server/wm/TaskStack;
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 1430
    .local v1, "full":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    monitor-exit v5

    .line 1439
    .end local v0    # "docked":Lcom/android/server/wm/TaskStack;
    .end local v1    # "full":Lcom/android/server/wm/TaskStack;
    :cond_1
    return v7

    .line 1431
    .restart local v0    # "docked":Lcom/android/server/wm/TaskStack;
    .restart local v1    # "full":Lcom/android/server/wm/TaskStack;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1432
    .local v2, "t":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 1433
    .local v3, "w":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_0

    .line 1434
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 v6, 0x8000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_0

    monitor-exit v5

    .line 1435
    return v8

    .line 1427
    .end local v0    # "docked":Lcom/android/server/wm/TaskStack;
    .end local v1    # "full":Lcom/android/server/wm/TaskStack;
    .end local v2    # "t":Lcom/android/server/wm/Task;
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public isStackAdjustedForIme(I)Z
    .locals 3
    .param p1, "stackId"    # I

    .prologue
    .line 2180
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mStacksAdjustedForIme:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2181
    .local v0, "isAdjusted":Z
    :goto_0
    return v0

    .line 2180
    .end local v0    # "isAdjusted":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatusBarVisible()Z
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isStatusBarVisible()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isUsingTaskPositioner()Z
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isValidAppToken(Landroid/view/IApplicationToken;)Z
    .locals 3
    .param p1, "token"    # Landroid/view/IApplicationToken;

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1250
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1249
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public loadMultiWindowTransitionLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "transit"    # I
    .param p2, "taskId"    # I
    .param p3, "frame"    # Landroid/graphics/Rect;
    .param p4, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p5, "enter"    # Z
    .param p6, "freeform"    # Z
    .param p7, "a"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v0, 0x0

    .line 1611
    sparse-switch p1, :sswitch_data_0

    .line 1645
    :cond_0
    return-object v0

    .line 1613
    :sswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/MultiWindowManagerInternal;->loadMinimizeAnimationLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 1616
    :sswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/MultiWindowManagerInternal;->loadUnminimizeAnimationLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 1620
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p6, :cond_0

    .line 1621
    if-nez p5, :cond_0

    .line 1622
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->loadFreeformTaskCloseAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 1629
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    .line 1631
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->loadFreeformTaskOpenAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 1636
    :sswitch_4
    if-eqz p5, :cond_1

    :goto_0
    return-object v0

    .line 1637
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/framework/res/R$anim;->multiwindow_wallpaper_open_exit:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 1640
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/framework/res/R$anim;->multiwindow_docked_resize:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 1643
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/framework/res/R$anim;->multiwindow_freeze_default:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 1611
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xd -> :sswitch_4
        0xc9 -> :sswitch_5
        0xca -> :sswitch_6
    .end sparse-switch
.end method

.method public logByFreeformDraggingToSplit(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "otherStackPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 3439
    new-array v1, v2, [Ljava/lang/String;

    .line 3440
    .local v1, "features":[Ljava/lang/String;
    new-array v0, v2, [Ljava/lang/String;

    .line 3442
    .local v0, "extra":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3443
    :try_start_0
    const-string v2, "SPBY"

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 3444
    const-string v2, "FreeformDragging"

    const/4 v4, 0x0

    aput-object v2, v0, v4

    .line 3446
    const-string v2, "SPPA"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 3447
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3448
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3449
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 3451
    :cond_0
    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 3454
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    .line 3438
    return-void

    .line 3442
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 2758
    const-string v0, "com.samsung.android.multiwindow"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    return-void
.end method

.method public logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 2763
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2764
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 2765
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2766
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "appid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    const-string v2, "feature"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2768
    const-string v2, "extra"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2770
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->sendMessage(Landroid/os/Message;)Z

    .line 2762
    return-void
.end method

.method public logMultiWindowBehavior(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "features"    # [Ljava/lang/String;
    .param p3, "extras"    # [Ljava/lang/String;

    .prologue
    .line 2780
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2781
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 2782
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2783
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "appid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    const-string v2, "features"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2785
    const-string v2, "extras"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2786
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2787
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->sendMessage(Landroid/os/Message;)Z

    .line 2779
    return-void
.end method

.method public logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "features"    # [Ljava/lang/String;
    .param p2, "extras"    # [Ljava/lang/String;

    .prologue
    .line 2775
    const-string v0, "com.samsung.android.multiwindow"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 2774
    return-void
.end method

.method public makeFinishing(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 663
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 664
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_0

    monitor-exit v2

    .line 665
    return-void

    .line 667
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->finishing:Z

    .line 669
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mBackgroundToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_1

    .line 670
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    .line 671
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    .line 672
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 673
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/wm/Task;->mBackgroundToken:Lcom/android/server/wm/AppWindowToken;

    .line 674
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v2

    .line 660
    return-void

    .line 662
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public makeGhostFreeformLocked(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "captionHeight"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1148
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_2

    .line 1149
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    if-nez v3, :cond_0

    .line 1150
    return-void

    .line 1153
    :cond_0
    const/4 v2, 0x0

    .line 1154
    .local v2, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1155
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1156
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_1

    monitor-exit v4

    .line 1157
    return-void

    .line 1160
    :cond_1
    :try_start_1
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v2, "task":Lcom/android/server/wm/Task;
    monitor-exit v4

    .line 1163
    if-eqz v2, :cond_2

    .line 1164
    iput p2, v2, Lcom/android/server/wm/Task;->mCurrentCaptionHieght:I

    .line 1166
    iget v3, v2, Lcom/android/server/wm/Task;->mFreeformAlpha:F

    const v4, 0x3e4ccccd    # 0.2f

    add-float v1, v3, v4

    .line 1167
    .local v1, "freeformAlpha":F
    cmpl-float v3, v1, v5

    if-nez v3, :cond_3

    .end local v1    # "freeformAlpha":F
    :goto_0
    iput v1, v2, Lcom/android/server/wm/Task;->mFreeformAlpha:F

    .line 1169
    iget v3, v2, Lcom/android/server/wm/Task;->mFreeformAlpha:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Lcom/android/server/wm/Task;->mFreeformAlphaMode:Z

    .line 1171
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1147
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_2
    return-void

    .line 1154
    .local v2, "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1167
    .restart local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v1    # "freeformAlpha":F
    .local v2, "task":Lcom/android/server/wm/Task;
    :cond_3
    rem-float/2addr v1, v5

    goto :goto_0

    .line 1169
    .end local v1    # "freeformAlpha":F
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public moveDockedPopupWindowIfNeededLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3461
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3462
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inDockedWorkspace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3463
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isResizeableByDockedStack()Z

    move-result v3

    .line 3461
    if-eqz v3, :cond_4

    .line 3464
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_4

    .line 3465
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 3466
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_4

    .line 3467
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    .line 3461
    if-eqz v3, :cond_4

    .line 3468
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 3469
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->getInputMethodWindowVisibleHeightLw()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 3470
    .local v0, "isImeFullscreen":Z
    :goto_0
    if-nez v0, :cond_4

    .line 3471
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v3

    .line 3470
    if-eqz v3, :cond_4

    .line 3471
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v3

    .line 3470
    if-eqz v3, :cond_4

    .line 3472
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 3473
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ed

    if-eq v3, v4, :cond_1

    .line 3474
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_4

    .line 3475
    :cond_1
    return v1

    .end local v0    # "isImeFullscreen":Z
    :cond_2
    move v0, v2

    .line 3469
    goto :goto_0

    :cond_3
    move v0, v2

    .line 3468
    goto :goto_0

    .line 3479
    :cond_4
    return v2
.end method

.method public moveDockedPopupWindowLocked(Z)V
    .locals 14
    .param p1, "needAssignLayers"    # Z

    .prologue
    .line 3485
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 3486
    .local v2, "collectDockedPopupWindow":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/wm/WindowState;>;"
    iget-object v12, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v10

    .line 3487
    .local v10, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    .line 3488
    invoke-virtual {v10, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 3489
    .local v9, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0, v9}, Lcom/android/server/wm/MultiWindowManagerInternal;->moveDockedPopupWindowIfNeededLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3490
    invoke-virtual {v2, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 3487
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 3493
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v1, 0x0

    .line 3494
    .local v1, "collect":Z
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    .line 3495
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 3496
    .restart local v9    # "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v10, v9}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 3497
    .local v11, "wpos":I
    if-ltz v11, :cond_2

    .line 3498
    invoke-virtual {v10, v9}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 3499
    iget-object v12, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3500
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 3501
    .local v0, "child":I
    :cond_3
    :goto_2
    if-lez v0, :cond_5

    .line 3502
    add-int/lit8 v0, v0, -0x1

    .line 3503
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 3504
    .local v4, "cwin":Lcom/android/server/wm/WindowState;
    invoke-virtual {v10, v4}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 3505
    .local v3, "cpos":I
    if-ltz v3, :cond_3

    .line 3506
    invoke-virtual {v10, v3}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 3493
    .end local v0    # "child":I
    .end local v1    # "collect":Z
    .end local v3    # "cpos":I
    .end local v4    # "cwin":Lcom/android/server/wm/WindowState;
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    .end local v11    # "wpos":I
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "collect":Z
    goto :goto_1

    .line 3509
    .restart local v0    # "child":I
    .restart local v9    # "win":Lcom/android/server/wm/WindowState;
    .restart local v11    # "wpos":I
    :cond_5
    iget-object v12, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10, v12}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 3510
    .local v6, "imwIndex":I
    iget-object v12, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v12, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    .line 3511
    .local v7, "inputMethodChildWindows":Lcom/android/server/wm/WindowList;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v12

    if-ge v8, v12, :cond_7

    .line 3512
    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    if-ge v6, v12, :cond_6

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 3511
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3514
    :cond_7
    iget-object v12, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13, v9}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    goto :goto_1

    .line 3517
    .end local v0    # "child":I
    .end local v6    # "imwIndex":I
    .end local v7    # "inputMethodChildWindows":Lcom/android/server/wm/WindowList;
    .end local v8    # "j":I
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    .end local v11    # "wpos":I
    :cond_8
    if-eqz v1, :cond_9

    if-eqz p1, :cond_9

    .line 3518
    iget-object v12, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    invoke-virtual {v12, v10}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    .line 3483
    :cond_9
    return-void
.end method

.method public moveStackToBottomLocked(I)V
    .locals 8
    .param p1, "stackId"    # I

    .prologue
    .line 1650
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 1651
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1652
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v4

    .line 1653
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    const/4 v1, 0x0

    .line 1654
    .local v1, "freeformStack":Lcom/android/server/wm/TaskStack;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "stack$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    .line 1655
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    iget v5, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 1656
    move-object v1, v2

    .line 1660
    .end local v1    # "freeformStack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    if-eqz v1, :cond_2

    .line 1661
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    .line 1662
    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->prepareAppTransitionIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 1663
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->moveStackWindowsLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v6

    .line 1649
    return-void

    .line 1650
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "stack$iterator":Ljava/util/Iterator;
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public notifyApplyMinimizeFreeformPolicy(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 2725
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_3

    .line 2726
    sget-boolean v2, Lcom/android/server/wm/MultiWindowManagerInternal;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 2727
    const-string v2, "MultiWindowManagerInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyApplyMinimizeFreeformPolicy :: mFreeformTaskIdToOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTaskIdToOpen:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    :cond_0
    const/4 v0, -0x1

    .line 2731
    .local v0, "taskId":I
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2732
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 2733
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_1

    .line 2734
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v2

    .line 2733
    if-eqz v2, :cond_1

    .line 2735
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget v0, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2738
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTaskIdToOpen:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2739
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v2, v0}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->notifyApplyFreeformMinimizePolicy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    .line 2724
    .end local v0    # "taskId":I
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    return-void

    .line 2731
    .restart local v0    # "taskId":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public notifyFreefromWindowAnimationEnd(IILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "transit"    # I
    .param p3, "taskBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->notifyFreefromWindowAnimationEnd(IILandroid/graphics/Rect;)V

    .line 1576
    return-void
.end method

.method public notifyLastDockTaskToBackTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0, p1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->notifyLastDockTaskToBackTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 1603
    return-void
.end method

.method public notifyMultiWindowAppTransitionFinishedLocked()V
    .locals 1

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->notifyMultiWindowAppTransitionFinishedLocked()V

    .line 1583
    :cond_0
    return-void
.end method

.method public notifyProcessKillByClosingFreeform(I)V
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 2052
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2054
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2055
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0, p1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->notifyProcessKillByClosingFreeform(I)V

    .line 2051
    :cond_0
    return-void
.end method

.method public notifyScreenFreezeAnimationFinished()V
    .locals 1

    .prologue
    .line 2465
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->notifyScreenFreezeAnimationFinished()V

    .line 2463
    return-void
.end method

.method public okToDisplay()Z
    .locals 1

    .prologue
    .line 2808
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->loadResource()V

    .line 245
    return-void
.end method

.method public postApplyForceHidingPolicy()V
    .locals 2

    .prologue
    .line 2259
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mLocalForceHideFloatingMultiWindow:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    .line 2258
    return-void
.end method

.method public preApplyForceHidingPolicy()V
    .locals 1

    .prologue
    .line 2233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mLocalForceHideFloatingMultiWindow:Z

    .line 2232
    return-void
.end method

.method public prepareAppTransitionIfNeeded(I)V
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 2074
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 2075
    .local v0, "taskStack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    .line 2076
    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->prepareAppTransitionIfNeeded(Lcom/android/server/wm/TaskStack;)V

    .line 2072
    :cond_0
    return-void
.end method

.method public prepareLastDockTaskToBackToFullscreen(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 2447
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2448
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mLastDockTaskToBackToFullScreen:Z

    .line 2446
    :cond_0
    return-void
.end method

.method public prepareResizeAnim(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1812
    .local p1, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->prepareResizeAnim(Ljava/util/ArrayList;Z)V

    .line 1811
    return-void
.end method

.method public prepareResizeAnim(Ljava/util/ArrayList;Z)V
    .locals 13
    .param p2, "override"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v12, 0x1

    .line 1817
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 1818
    :try_start_0
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 1819
    .local v1, "displayId":I
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v10, v10, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eq v10, v12, :cond_0

    .line 1820
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1821
    :cond_0
    sget-boolean v10, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    if-eqz v10, :cond_1

    const-string v10, "MultiWindowManagerInternal"

    .line 1822
    const-string v12, "prepareResizeAnimLocked : Other window animation is already running.. skip"

    .line 1821
    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v11

    .line 1823
    return-void

    .line 1826
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;

    move-result-object v2

    .line 1827
    .local v2, "screenFreezeAnimation":Lcom/android/server/wm/ScreenFreezeAnimation;
    if-nez p2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationRunning()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1828
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimating()Z

    move-result v10

    .line 1827
    if-eqz v10, :cond_5

    .line 1829
    :cond_3
    sget-boolean v10, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    if-eqz v10, :cond_4

    const-string v10, "MultiWindowManagerInternal"

    .line 1830
    const-string v12, "prepareResizeAnimLocked : screen freeze animation is already running.. skip request"

    .line 1829
    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v11

    .line 1831
    return-void

    .line 1834
    :cond_5
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1836
    .local v3, "targetTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "token$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 1837
    .local v4, "token":Landroid/os/IBinder;
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v4}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1838
    .local v0, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_6

    .line 1839
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1817
    .end local v0    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "displayId":I
    .end local v2    # "screenFreezeAnimation":Lcom/android/server/wm/ScreenFreezeAnimation;
    .end local v3    # "targetTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v5    # "token$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 1843
    .restart local v1    # "displayId":I
    .restart local v2    # "screenFreezeAnimation":Lcom/android/server/wm/ScreenFreezeAnimation;
    .restart local v3    # "targetTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v5    # "token$iterator":Ljava/util/Iterator;
    :cond_7
    :try_start_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1844
    const/4 v10, 0x1

    invoke-virtual {v2, v3, v10}, Lcom/android/server/wm/ScreenFreezeAnimation;->setScreenFreezeAnimation(Ljava/util/ArrayList;I)V

    .line 1845
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->prepare()V

    .line 1846
    if-eqz p2, :cond_b

    .line 1847
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "wtoken$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 1848
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v10, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "win$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 1849
    .local v6, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v10

    if-nez v10, :cond_9

    iget-boolean v10, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v10, :cond_8

    .line 1850
    :cond_9
    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v12, 0x1

    iput v12, v10, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    goto :goto_2

    .line 1853
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_a
    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1854
    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v7    # "win$iterator":Ljava/util/Iterator;
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v9    # "wtoken$iterator":Ljava/util/Iterator;
    :cond_b
    monitor-exit v11

    .line 1816
    return-void
.end method

.method public prepareSwapAnimLocked()V
    .locals 15

    .prologue
    .line 1863
    iget-object v13, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 1864
    .local v0, "dStack":Lcom/android/server/wm/TaskStack;
    iget-object v13, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 1866
    .local v1, "fStack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1867
    if-nez v1, :cond_1

    .line 1868
    :cond_0
    return-void

    .line 1867
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    .line 1866
    if-nez v13, :cond_0

    .line 1871
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;

    move-result-object v2

    .line 1872
    .local v2, "screenFreezeAnimation":Lcom/android/server/wm/ScreenFreezeAnimation;
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationRunning()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1873
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimating()Z

    move-result v13

    .line 1872
    if-eqz v13, :cond_4

    .line 1874
    :cond_2
    sget-boolean v13, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    if-eqz v13, :cond_3

    const-string v13, "MultiWindowManagerInternal"

    .line 1875
    const-string v14, "prepareResizeAnimLocked : screen freeze animation is already running.. skip request"

    .line 1874
    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :cond_3
    return-void

    .line 1879
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1881
    .local v3, "targetTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "task$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 1882
    .local v4, "task":Lcom/android/server/wm/Task;
    iget-object v13, v4, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "wtoken$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    .line 1883
    .local v11, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1886
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v11    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v12    # "wtoken$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 1887
    .restart local v4    # "task":Lcom/android/server/wm/Task;
    iget-object v13, v4, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "wtoken$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    .line 1888
    .restart local v11    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1891
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v11    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v12    # "wtoken$iterator":Ljava/util/Iterator;
    :cond_8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1892
    .local v8, "visibleTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "token$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 1893
    .local v6, "token":Lcom/android/server/wm/AppWindowToken;
    iget-object v13, v6, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "win$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 1894
    .local v9, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v13

    if-eqz v13, :cond_a

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v13, :cond_a

    .line 1895
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1900
    .end local v6    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    .end local v10    # "win$iterator":Ljava/util/Iterator;
    :cond_b
    move-object v3, v8

    .line 1902
    const/4 v13, 0x2

    invoke-virtual {v2, v8, v13}, Lcom/android/server/wm/ScreenFreezeAnimation;->setScreenFreezeAnimation(Ljava/util/ArrayList;I)V

    .line 1903
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1862
    :cond_c
    :goto_3
    return-void

    .line 1903
    :cond_d
    iget-object v13, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1904
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->prepare()V

    goto :goto_3
.end method

.method public removeFakedRelaunchAnimTokensLocked(Lcom/android/server/wm/AppWindowToken;Ljava/lang/String;)V
    .locals 3
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2008
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2009
    sget-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFakedRelaunchAnimTokensLocked, removing wtoken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2010
    const-string v2, ", Callers="

    .line 2009
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2010
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 2009
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2007
    :cond_1
    return-void
.end method

.method public removePendingReplaceWindowLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;)V
    .locals 10
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "removingWin"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2529
    const/4 v3, 0x0

    .line 2530
    .local v3, "replaceTargetWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .end local v3    # "replaceTargetWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2531
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 2532
    .local v4, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_1

    .line 2533
    if-nez v3, :cond_0

    .line 2534
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2536
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2530
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2540
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    if-eqz v3, :cond_4

    .line 2541
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "replaceTargetWin$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2542
    .local v1, "replaceTargetWin":Lcom/android/server/wm/WindowState;
    sget-boolean v5, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "MultiWindowManagerInternal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removePendingReplaceWindowLocked, replaceTargetWin="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2543
    const-string v7, ", removingWin="

    .line 2542
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    :cond_3
    iput-boolean v8, v1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 2545
    iput-boolean v8, v1, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 2546
    iput-boolean v8, v1, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    .line 2547
    iput-object v9, v1, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    .line 2548
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    goto :goto_1

    .line 2527
    .end local v1    # "replaceTargetWin":Lcom/android/server/wm/WindowState;
    .end local v2    # "replaceTargetWin$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public removeStackAdjustedForIme(I)V
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mStacksAdjustedForIme:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2198
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mStacksAdjustedForIme:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->updateAdjustedForImeState(Z)V

    .line 2195
    :cond_0
    return-void
.end method

.method public reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2151
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2149
    :cond_0
    return-void
.end method

.method public requestAutoResizingIfNeededLocked(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "orig"    # Landroid/graphics/Rect;

    .prologue
    .line 2854
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v1, p1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->requestAutoResizingIfNeeded(Landroid/graphics/Rect;)Z

    move-result v0

    .line 2855
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 2856
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x2a

    .line 2857
    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 2856
    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2859
    :cond_0
    return v0
.end method

.method public requestFreeformMinimizedPolicy(Z)V
    .locals 0
    .param p1, "request"    # Z

    .prologue
    .line 620
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsRequestedFreeformMinimizePolicy:Z

    .line 618
    return-void
.end method

.method public resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "token"    # Landroid/view/IApplicationToken;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2471
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v5, :cond_3

    .line 2472
    if-nez p1, :cond_0

    return-void

    .line 2475
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 2476
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .local v4, "wtoken":Lcom/android/server/wm/AppWindowToken;
    monitor-exit v6

    .line 2479
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2481
    if-eqz v4, :cond_5

    :try_start_1
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2483
    invoke-static {}, Lcom/android/server/am/ActivityManagerPerformance;->getBooster()Lcom/android/server/am/ActivityManagerPerformance;

    move-result-object v0

    .line 2484
    .local v0, "booster":Lcom/android/server/am/ActivityManagerPerformance;
    if-eqz v0, :cond_1

    .line 2485
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2488
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v4, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setReplacingWindow(Landroid/os/IBinder;Z)V

    .line 2489
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v6, v4, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v7, 0x0

    invoke-interface {v5, v6, p2, v7}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 2490
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2491
    :try_start_2
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "win$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2492
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v5, v2, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    if-eqz v5, :cond_2

    .line 2493
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2494
    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/server/wm/WindowState;->mMovedByResize:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2490
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    .end local v3    # "win$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6

    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2505
    .end local v0    # "booster":Lcom/android/server/am/ActivityManagerPerformance;
    :catch_0
    move-exception v1

    .line 2506
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2508
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2470
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    :goto_1
    return-void

    .line 2475
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v0    # "booster":Lcom/android/server/am/ActivityManagerPerformance;
    .restart local v3    # "win$iterator":Ljava/util/Iterator;
    .restart local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    :try_start_5
    monitor-exit v6

    .line 2498
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v4, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->scheduleClearReplacingWindowIfNeeded(Landroid/os/IBinder;Z)V

    .line 2501
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2502
    :try_start_6
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    invoke-direct {p0, v5}, Lcom/android/server/wm/MultiWindowManagerInternal;->prepareFreeformResizeAnimLocked(Lcom/android/server/wm/Task;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2508
    .end local v0    # "booster":Lcom/android/server/am/ActivityManagerPerformance;
    .end local v3    # "win$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    goto :goto_1

    .line 2501
    .restart local v0    # "booster":Lcom/android/server/am/ActivityManagerPerformance;
    .restart local v3    # "win$iterator":Ljava/util/Iterator;
    :catchall_2
    move-exception v5

    :try_start_8
    monitor-exit v6

    throw v5
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2507
    .end local v0    # "booster":Lcom/android/server/am/ActivityManagerPerformance;
    .end local v3    # "win$iterator":Ljava/util/Iterator;
    :catchall_3
    move-exception v5

    .line 2508
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2507
    throw v5
.end method

.method public rotationAnimationStateChangedLocked(Z)V
    .locals 1
    .param p1, "isAnimating"    # Z

    .prologue
    .line 1595
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsRotationAnimating:Z

    if-eq v0, p1, :cond_0

    .line 1596
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsRotationAnimating:Z

    .line 1597
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0, p1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->rotationAnimationStateChangedLocked(Z)V

    .line 1593
    :cond_0
    return-void
.end method

.method public saveOriginalBoundsBeforeSliding(FFFFLandroid/graphics/Rect;)Z
    .locals 5
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F
    .param p5, "OriginalBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 809
    sub-float v0, p1, p3

    .line 810
    .local v0, "disanceX":F
    sub-float v1, p2, p4

    .line 812
    .local v1, "disanceY":F
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->clearSlideOriginalBounds()V

    .line 813
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 825
    :cond_0
    sget-boolean v2, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 826
    const-string v2, "MultiWindowManagerInternal"

    const-string v3, "saveOriginalBoundsBeforeSliding :: No save original bounds, it will be returned to False"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 814
    :cond_2
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 815
    const v3, 0x48742400    # 250000.0f

    .line 814
    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 816
    sget-boolean v2, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 817
    const-string v2, "MultiWindowManagerInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveOriginalBoundsBeforeSliding :: Save original bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", it will be returned to True"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpSlideOriginalBounds:Landroid/graphics/Rect;

    .line 821
    const/4 v2, 0x1

    return v2
.end method

.method public setAppWindowAnimatingState(Z)V
    .locals 0
    .param p1, "isAnimating"    # Z

    .prologue
    .line 3549
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mAppWindowAnimating:Z

    .line 3548
    return-void
.end method

.method public setAutoResizeAnimating(Z)V
    .locals 2
    .param p1, "isAnimating"    # Z

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2164
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mAutoResizeAnimating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2161
    return-void

    .line 2163
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setCoolDownFreeformRequested(Z)V
    .locals 1
    .param p1, "request"    # Z

    .prologue
    .line 2515
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2516
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCoolDownFreeformRequested:Z

    .line 2514
    :cond_0
    return-void
.end method

.method public setCurrentInputMethodClient(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 2421
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2422
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 2423
    .local v0, "client":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 2424
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e9

    if-eq v1, v3, :cond_0

    .line 2425
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_2

    .line 2427
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 2430
    :cond_1
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2432
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

    invoke-interface {v1, v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->updateTspInputMethodPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2420
    return-void

    .line 2426
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 2421
    .end local v0    # "client":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDexCompatEnabled(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isDexCompatEnabled"    # Z

    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 732
    .local v0, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 733
    iput-boolean p2, v0, Lcom/android/server/wm/AppWindowToken;->mIsDexCompatEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 728
    return-void

    .line 730
    .end local v0    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDexCompatMode(IZI)V
    .locals 10
    .param p1, "taskId"    # I
    .param p2, "isDexCompatEnabled"    # Z
    .param p3, "dexCompatUiMode"    # I

    .prologue
    const/4 v8, 0x0

    .line 742
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    .line 744
    .local v7, "task":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_1

    .line 745
    iput-boolean p2, v7, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    .line 746
    iput p3, v7, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    .line 747
    if-eqz p2, :cond_3

    .line 748
    iget-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 749
    new-instance v0, Landroid/view/SurfaceControl;

    .line 750
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string v2, "dexcompat background"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 751
    const/4 v5, -0x1

    const v6, 0x20004

    .line 749
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 753
    :cond_0
    iget-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 754
    iget-object v0, v7, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, v7, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    :goto_0
    iput-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundToken:Lcom/android/server/wm/AppWindowToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v9

    .line 740
    return-void

    :cond_2
    move-object v0, v8

    .line 754
    goto :goto_0

    .line 756
    :cond_3
    :try_start_1
    iget-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    .line 757
    iget-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 758
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 760
    :cond_4
    iget-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 761
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundToken:Lcom/android/server/wm/AppWindowToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 742
    .end local v7    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public setDividerButtonsDimLayer(ZFI)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "alpha"    # F
    .param p3, "type"    # I

    .prologue
    .line 1456
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1457
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1458
    .local v1, "displayContet":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    .line 1459
    .local v0, "controller":Lcom/android/server/wm/DockedStackDividerController;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/DockedStackDividerController;->setButtonsDimLayer(ZFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1454
    return-void

    .line 1456
    .end local v0    # "controller":Lcom/android/server/wm/DockedStackDividerController;
    .end local v1    # "displayContet":Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2064
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DockedStackDividerController;->setButtonsTouchRegion(Landroid/graphics/Rect;)V

    .line 2066
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2061
    return-void

    .line 2063
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setEnsureDockedResizing(Z)V
    .locals 0
    .param p1, "resizing"    # Z

    .prologue
    .line 1506
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedResizing:Z

    .line 1505
    return-void
.end method

.method public setForceHidingFloatingMultiWindow(Z)V
    .locals 0
    .param p1, "forceHide"    # Z

    .prologue
    .line 2269
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    .line 2268
    return-void
.end method

.method public setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 9
    .param p2, "state"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "visibleTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v8, 0x3

    .line 533
    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 539
    :cond_0
    iget v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRelaunchAnimState:I

    if-eq v4, p2, :cond_2

    .line 540
    const-string v4, "MultiWindowManagerInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFreeformRelaunchAnimState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Callers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iput p2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRelaunchAnimState:I

    .line 543
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    invoke-virtual {v4, v8}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->removeMessages(I)V

    .line 544
    iget v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRelaunchAnimState:I

    if-eqz v4, :cond_7

    .line 545
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 558
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    .line 560
    const-wide/16 v6, 0x1388

    .line 558
    invoke-virtual {v4, v8, v6, v7}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->sendEmptyMessageDelayed(IJ)Z

    .line 531
    :cond_2
    :goto_1
    return-void

    .line 534
    :cond_3
    const-string v4, "MultiWindowManagerInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFreeformRelaunchAnimState: display isn\'t ready, displayFrozen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 535
    const-string v6, ", mPolicy.isScreenOn="

    .line 534
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 535
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v6

    .line 534
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void

    .line 546
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v0, "targetWindowTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "token$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 548
    .local v1, "token":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 549
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_5

    .line 550
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 554
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_6
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 555
    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->prepareFreeformResizeAnimLocked(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 561
    .end local v0    # "targetWindowTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v2    # "token$iterator":Ljava/util/Iterator;
    :cond_7
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v4, :cond_2

    const-string v4, "freeze"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 562
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v4}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearScreenFreezAnimation()V

    goto :goto_1
.end method

.method public setFreeformStackTemporaryVisibilityLocked(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1687
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTemporaryInvisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1685
    return-void

    .line 1687
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1686
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setFreeformStackVisibilityLocked(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1680
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFeeformAlwaysVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1678
    return-void

    .line 1679
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setFreeformTransit(II)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "transit"    # I

    .prologue
    .line 608
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 609
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 610
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 611
    iput p2, v0, Lcom/android/server/wm/Task;->mFreeformTransit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 606
    return-void

    .line 608
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setGrantPermissionComponents(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGrantPermissionComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 272
    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHidden(II)V
    .locals 11
    .param p1, "taskId"    # I
    .param p2, "hidden"    # I

    .prologue
    .line 627
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 628
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 629
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_2

    .line 631
    iget v5, v2, Lcom/android/server/wm/Task;->mHiddenState:I

    if-eqz v5, :cond_1

    .line 632
    if-nez p2, :cond_1

    .line 634
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 635
    .local v3, "topAppToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 636
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 637
    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 638
    .local v4, "win":Lcom/android/server/wm/WindowState;
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 635
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 641
    .end local v0    # "N":I
    .end local v3    # "topAppToken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    iput p2, v2, Lcom/android/server/wm/Task;->mHiddenState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v6

    .line 625
    return-void

    .line 627
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public setIgnoreMinimizeDocked(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 1303
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1305
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p1, v0, Lcom/android/server/wm/WindowManagerService;->mIgnoreMinimizeDocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1302
    :cond_0
    return-void

    .line 1304
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setMinimizeSoftInput(Z)V
    .locals 0
    .param p1, "minimize"    # Z

    .prologue
    .line 2437
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeSoftInput:Z

    .line 2436
    return-void
.end method

.method public setMultiWindowManagerService(Lcom/android/server/am/IMultiWindowManagerServiceBridge;)V
    .locals 0
    .param p1, "multiWindowManager"    # Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    .line 267
    return-void
.end method

.method public setOrientationChanging(Z)V
    .locals 1
    .param p1, "isChanging"    # Z

    .prologue
    .line 3415
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mOrientationChanging:Z

    if-eq v0, p1, :cond_0

    .line 3416
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mOrientationChanging:Z

    .line 3414
    :cond_0
    return-void
.end method

.method public setProcessKillAfterRemovingTaskLocked(I)V
    .locals 5
    .param p1, "taskId"    # I

    .prologue
    .line 2037
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_1

    .line 2039
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2040
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 2041
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2042
    iget-object v3, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "wtoken$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 2043
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->mProcessKillAfterRemovingTask:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2039
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "wtoken$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "task":Lcom/android/server/wm/Task;
    :cond_0
    monitor-exit v4

    .line 2036
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_1
    return-void
.end method

.method public setSlideMode(IZ)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "slide"    # Z

    .prologue
    .line 798
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 799
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 800
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 801
    iput-boolean p2, v0, Lcom/android/server/wm/Task;->mSlideMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 796
    return-void

    .line 798
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setSnapWindowDeferAnimation(IZ)Z
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "b"    # Z

    .prologue
    .line 1288
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_1

    .line 1289
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1290
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1291
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 1292
    iput-boolean p2, v0, Lcom/android/server/wm/Task;->mSnapWindowDeferAnimation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    .line 1297
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 1289
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setStackColor(II)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 2096
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 2097
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 2098
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2099
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->getColor()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 2100
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->setColor(I)V

    .line 2101
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 2104
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->updateColorLayerSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2106
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 2095
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    return-void

    .line 2105
    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v1

    .line 2106
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 2105
    throw v1
.end method

.method public setSupportFreeformDensity(IZ)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "supportFreeformDensity"    # Z

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 652
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 653
    iput-boolean p2, v0, Lcom/android/server/wm/Task;->mSupportFreefromDensity:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 648
    return-void

    .line 650
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setSystemService(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 241
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->loadResource()V

    .line 239
    return-void
.end method

.method public setTaskDimensions(IIIII)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I

    .prologue
    .line 683
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 685
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 686
    iput p2, v0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 687
    iput p3, v0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 688
    iput p4, v0, Lcom/android/server/wm/Task;->mMaxWidth:I

    .line 689
    iput p5, v0, Lcom/android/server/wm/Task;->mMaxHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 681
    return-void

    .line 683
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setTaskMaxDimensions(III)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 711
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 713
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 714
    iput p2, v0, Lcom/android/server/wm/Task;->mMaxWidth:I

    .line 715
    iput p3, v0, Lcom/android/server/wm/Task;->mMaxHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 709
    return-void

    .line 711
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setTaskMinDimensions(III)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I

    .prologue
    .line 698
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 700
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 701
    iput p2, v0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 702
    iput p3, v0, Lcom/android/server/wm/Task;->mMinHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 696
    return-void

    .line 698
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setTaskToSnapTargetFullscreen(IZ)Z
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "b"    # Z

    .prologue
    .line 1273
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_1

    .line 1274
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1275
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1276
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 1277
    iput-boolean p2, v0, Lcom/android/server/wm/Task;->mSnapTargetFullscreen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    .line 1282
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 1274
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setTaskToSnapWindowTarget(IZ)Z
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "b"    # Z

    .prologue
    .line 1257
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_1

    .line 1258
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1259
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1260
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 1261
    iput-boolean p2, v0, Lcom/android/server/wm/Task;->mSnapWindowTarget:Z

    .line 1262
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p2, v1, Lcom/android/server/wm/WindowManagerService;->mSnapWindowRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    .line 1267
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 1258
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setTokensResizedInSplitLocked(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    .line 1693
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1694
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1695
    .local v0, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTokensResizedInSplit:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    .line 1692
    return-void

    .line 1696
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTokensResizedInSplit:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1693
    .end local v0    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setUseFreeformBorder(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "useFreeformBorder"    # Z

    .prologue
    .line 2748
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2749
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 2750
    .local v0, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 2751
    iput-boolean p2, v0, Lcom/android/server/wm/AppWindowToken;->mUseFreeformBorder:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 2746
    return-void

    .line 2748
    .end local v0    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public shouldForceHideIfNeeded(Lcom/android/server/wm/WindowState;ZZ)Z
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "keyguardOn"    # Z
    .param p3, "allowWhenLocked"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2291
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x8fe

    if-ne v1, v2, :cond_0

    .line 2292
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2293
    return v3

    .line 2296
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    if-eqz v1, :cond_2

    .line 2297
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2298
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    .line 2299
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2300
    return v3

    .line 2303
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x8ff

    if-ne v1, v2, :cond_2

    .line 2304
    return v3

    .line 2309
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public shouldKeepVisibleAnimation(Lcom/android/server/wm/AppWindowToken;ZZ)Z
    .locals 4
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "enter"    # Z
    .param p3, "freeform"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 570
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_0

    .line 571
    iget v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRelaunchAnimState:I

    packed-switch v3, :pswitch_data_0

    .line 588
    :cond_0
    return v1

    .line 575
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v3

    .line 574
    if-eqz v3, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;

    move-result-object v0

    .line 577
    .local v0, "screenFreezeAnim":Lcom/android/server/wm/ScreenFreezeAnimation;
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ScreenFreezeAnimation;->containsTargetWindow(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 579
    return v2

    .line 583
    .end local v0    # "screenFreezeAnim":Lcom/android/server/wm/ScreenFreezeAnimation;
    :cond_1
    if-eqz p2, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    .line 585
    :pswitch_1
    if-eqz p3, :cond_3

    :goto_1
    return v1

    :cond_3
    move v1, v2

    goto :goto_1

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public shouldKeepVisibleWhileNotDragResizing(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v2, 0x0

    .line 2083
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isResizedWhileNotDragResizing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2085
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2086
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 2087
    sget-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldKeepVisibleWhileNotDragResizing: Window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2091
    :cond_1
    return v2
.end method

.method public slideFreeformTask(IZI)Z
    .locals 12
    .param p1, "taskId"    # I
    .param p2, "slide"    # Z
    .param p3, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 833
    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_c

    .line 834
    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    .line 833
    if-eqz v6, :cond_c

    .line 835
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 836
    .local v4, "slideBounds":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 837
    .local v3, "originalBounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 838
    .local v1, "display":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 840
    .local v5, "task":Lcom/android/server/wm/Task;
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v6, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 841
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/wm/Task;

    move-object v5, v0

    .line 842
    .local v5, "task":Lcom/android/server/wm/Task;
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 843
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 845
    if-eqz v5, :cond_0

    iget v6, v5, Lcom/android/server/wm/Task;->mHiddenState:I

    if-eqz v6, :cond_2

    .line 846
    :cond_0
    sget-boolean v6, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 847
    const-string v6, "MultiWindowManagerInternal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slideFreeformTask :: task is already minimized or null, task="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v9

    .line 849
    return v8

    .line 852
    :cond_2
    if-eqz p2, :cond_9

    .line 853
    :try_start_1
    iget-boolean v6, v5, Lcom/android/server/wm/Task;->mSlideMode:Z

    if-eqz v6, :cond_4

    .line 854
    sget-boolean v6, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 855
    const-string v6, "MultiWindowManagerInternal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slideFreeformTask :: task is already slide mode, task="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v9

    .line 857
    return v8

    .line 860
    :cond_4
    :try_start_2
    invoke-virtual {v5, v3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 862
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpSlideOriginalBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_5

    .line 863
    new-instance v6, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpSlideOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, v5, Lcom/android/server/wm/Task;->mTmpSavedBounds:Landroid/graphics/Rect;

    .line 868
    :goto_0
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 869
    if-nez p3, :cond_7

    .line 870
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget v10, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    if-gt v6, v10, :cond_6

    .line 871
    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v6, -0x19

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 872
    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v6, v10

    iput v6, v4, Landroid/graphics/Rect;->right:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v9

    .line 897
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    .line 898
    if-eqz p2, :cond_b

    move v6, v7

    .line 897
    :goto_2
    const/4 v8, 0x5

    invoke-virtual {v9, v8, p1, v6, v4}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 899
    return v7

    .line 865
    :cond_5
    :try_start_3
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, v5, Lcom/android/server/wm/Task;->mTmpSavedBounds:Landroid/graphics/Rect;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 840
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v6

    monitor-exit v9

    throw v6

    .line 874
    .restart local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    :cond_6
    const/16 v6, 0x19

    :try_start_4
    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 875
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x19

    iput v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 878
    :cond_7
    const/4 v6, 0x2

    if-ne p3, v6, :cond_8

    .line 879
    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v6, -0x19

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 880
    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v6, v10

    iput v6, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 882
    :cond_8
    const/16 v6, 0x19

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 883
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x19

    iput v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 887
    :cond_9
    iget-boolean v6, v5, Lcom/android/server/wm/Task;->mSlideMode:Z

    if-nez v6, :cond_a

    .line 888
    const-string v6, "MultiWindowManagerInternal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slideFreeformTask :: task isn\'t already fling mode, task="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v9

    .line 889
    return v8

    .line 892
    :cond_a
    :try_start_5
    iget-object v6, v5, Lcom/android/server/wm/Task;->mTmpSavedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 893
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/wm/Task;->mTmpSavedBounds:Landroid/graphics/Rect;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_b
    move v6, v8

    .line 898
    goto :goto_2

    .line 902
    .end local v1    # "display":Landroid/graphics/Rect;
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "originalBounds":Landroid/graphics/Rect;
    .end local v4    # "slideBounds":Landroid/graphics/Rect;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :cond_c
    return v8
.end method

.method public startDividerDragging()V
    .locals 2

    .prologue
    .line 2564
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2565
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsDividerDragging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2562
    return-void

    .line 2564
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public startResizingFreeformTask(III)V
    .locals 7
    .param p1, "taskId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 907
    const/4 v2, 0x0

    .line 908
    .local v2, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 909
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/wm/Task;

    move-object v2, v0

    .line 910
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_0

    .line 911
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 912
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    const/4 v6, 0x1

    .line 911
    invoke-virtual {v3, v5, v6, p2, p3}, Lcom/android/server/wm/WindowManagerService;->startPositioningFreeformLocked(Lcom/android/server/wm/WindowState;ZII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    .line 913
    return-void

    :cond_0
    monitor-exit v4

    .line 917
    if-eqz v2, :cond_1

    .line 919
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3, p1}, Landroid/app/IActivityManager;->setFocusedTask(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 906
    :cond_1
    :goto_0
    return-void

    .line 908
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 920
    .restart local v2    # "task":Lcom/android/server/wm/Task;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stepAnimationLocked(J)Z
    .locals 3
    .param p1, "now"    # J

    .prologue
    const/4 v1, 0x0

    .line 1938
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ScreenFreezeAnimation;->stepAnimationLocked(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1942
    const/4 v0, 0x1

    return v0

    .line 1939
    :cond_0
    return v1

    .line 1944
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearScreenFreezAnimation()V

    .line 1945
    return v1
.end method

.method public stopDividerDragging()V
    .locals 2

    .prologue
    .line 2573
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2574
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsDividerDragging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2571
    return-void

    .line 2573
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public updateFreeformShadowLightLocationLocked(I)V
    .locals 9
    .param p1, "taskId"    # I

    .prologue
    .line 2017
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 2018
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_2

    .line 2019
    iget-object v6, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2020
    iget-object v6, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 2021
    .local v5, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "winNdx":I
    :goto_1
    if-ltz v4, :cond_1

    .line 2022
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2023
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget v6, v2, Lcom/android/server/wm/Task;->mHiddenState:I

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2025
    :try_start_0
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-interface {v6, v7, v8}, Landroid/view/IWindow;->moved(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2021
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2026
    :catch_0
    move-exception v1

    .line 2027
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 2019
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2016
    .end local v0    # "activityNdx":I
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_2
    return-void
.end method

.method public updateMouseConnectedForDesktopMode(Z)V
    .locals 2
    .param p1, "mouseConnected"    # Z

    .prologue
    .line 779
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 782
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMouseConnectedForDesktopMode:Z

    if-eq p1, v0, :cond_0

    .line 783
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMouseConnectedForDesktopMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 778
    :cond_1
    return-void

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateMultiWindowToastFrame(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1215
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_1

    .line 1217
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1218
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mMultiWindowToastTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1219
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1220
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mMultiWindowToastTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1221
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1222
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    monitor-exit v2

    .line 1214
    :cond_1
    return-void

    .line 1217
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1203
    .local p1, "taskPositions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/graphics/Point;>;"
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1206
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskPositions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1207
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskPositions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1202
    :cond_0
    return-void

    .line 1205
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public waitScreenFreezeAnimationForRecentsDrawn()V
    .locals 3

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1920
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1918
    return-void

    .line 1919
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

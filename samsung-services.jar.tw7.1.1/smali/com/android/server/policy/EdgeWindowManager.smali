.class public Lcom/android/server/policy/EdgeWindowManager;
.super Ljava/lang/Object;
.source "EdgeWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/EdgeWindowPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/EdgeWindowManager$MessageHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEBUG_LAYOUT:Z = true

.field static final DEBUG_ORIENTATION:Z

.field private static final MSG_EDGE_SCREEN_WAKEUP:I = 0x1

.field private static final MSG_UPDATE_GRIP_STATE:I = 0x2

.field static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "EdgeWindowManager"

.field static final mTmpCocktailFrame:Landroid/graphics/Rect;


# instance fields
.field private mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCocktailBarDirection:I

.field private mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

.field private mCocktailSize:I

.field mContext:Landroid/content/Context;

.field private mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCurrentRotation:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mEdgeScreenWakeupReason:I

.field private mEnabledCocktailRotationAnimation:Z

.field private mFocusedFloatingSubWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mHandler:Landroid/os/Handler;

.field private mHideBackgroundWindow:Z

.field private mInitCocktailBar:Z

.field private mPendingRemoveBackground:Z

.field mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mPolicyWindowType:I

.field private mPolicyWindowVisiblity:Z

.field mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

.field private final mServiceAquireLock:Ljava/lang/Object;

.field mStatusBarHeight:I

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

.field private mWakeupKeyCode:I

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/EdgeWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/EdgeWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/EdgeWindowManager;Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/EdgeWindowManager;->SAFE_DEBUG:Z

    .line 61
    sget-boolean v0, Lcom/android/server/policy/EdgeWindowManager;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/EdgeWindowManager;->DEBUG_ORIENTATION:Z

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/EdgeWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowType:I

    .line 82
    iput-boolean v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowVisiblity:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mEnabledCocktailRotationAnimation:Z

    .line 87
    const/16 v0, 0x42e

    iput v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mWakeupKeyCode:I

    .line 89
    iput v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mStatusBarHeight:I

    .line 94
    iput-boolean v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mInitCocktailBar:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mHideBackgroundWindow:Z

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    .line 106
    iput v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mEdgeScreenWakeupReason:I

    .line 56
    return-void
.end method

.method private checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "bCheckedNonOpaqueWindow"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 460
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x62

    if-ne v0, v1, :cond_0

    .line 461
    return v2

    .line 464
    :cond_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_3

    .line 465
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v4, :cond_1

    .line 466
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v4, :cond_1

    .line 467
    return v5

    .line 470
    :cond_1
    if-eqz p3, :cond_3

    .line 471
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v0, v3, :cond_2

    .line 472
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v3, :cond_3

    .line 473
    :cond_2
    return v5

    .line 479
    :cond_3
    return v2
.end method

.method private getPolicyWindowType()I
    .locals 9

    .prologue
    const/high16 v8, 0x20000000

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 386
    iget-object v4, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_8

    .line 387
    iget-object v4, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 389
    .local v3, "policyLp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    .line 406
    .local v2, "isStatusBarExpand":Z
    iget-object v4, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v1

    .line 418
    .local v1, "baseType":I
    sparse-switch v1, :sswitch_data_0

    .line 444
    if-lt v1, v6, :cond_1

    .line 445
    const/16 v4, 0x7cf

    if-le v1, v4, :cond_7

    .line 446
    :cond_1
    const/4 v4, 0x6

    return v4

    .line 407
    .end local v1    # "baseType":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 408
    .local v0, "appPolicyLp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_0

    .line 409
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v4, v8

    if-nez v4, :cond_3

    .line 410
    iget-object v4, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v4, v3, v5}, Lcom/android/server/policy/EdgeWindowManager;->checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 412
    :cond_3
    const/4 v4, 0x2

    return v4

    .line 420
    .end local v0    # "appPolicyLp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "baseType":I
    :sswitch_0
    const/16 v4, 0x8

    return v4

    .line 423
    :sswitch_1
    return v7

    .line 426
    :sswitch_2
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_4

    .line 427
    return v7

    .line 429
    :cond_4
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    .line 430
    const/4 v4, 0x7

    return v4

    .line 432
    :cond_5
    if-eqz v2, :cond_6

    .line 433
    const/4 v4, 0x3

    return v4

    .line 435
    :cond_6
    iget v4, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowType:I

    return v4

    .line 441
    :sswitch_3
    const/4 v4, 0x4

    return v4

    .line 451
    :cond_7
    return v6

    .line 454
    .end local v1    # "baseType":I
    .end local v2    # "isStatusBarExpand":Z
    .end local v3    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :cond_8
    iget v4, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowType:I

    return v4

    .line 418
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_2
        0x7d4 -> :sswitch_1
        0x7db -> :sswitch_3
        0x7dc -> :sswitch_3
        0x8ad -> :sswitch_0
        0x960 -> :sswitch_3
    .end sparse-switch
.end method

.method private isTransientShowing()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowVisiblity:Z

    return v0
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "opaqueWin"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x1

    .line 328
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 331
    const/4 v0, 0x1

    .line 332
    .local v0, "policyWindow":Z
    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 346
    :goto_0
    if-eqz v0, :cond_0

    .line 347
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/policy/EdgeWindowManager;->checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    iput-object p1, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 356
    .end local v0    # "policyWindow":Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_1

    .line 357
    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v1, v3, :cond_1

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x63

    if-gt v1, v2, :cond_1

    .line 358
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1}, Lcom/android/server/policy/EdgeWindowManager;->checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    iput-object p1, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x62

    if-ne v1, v2, :cond_2

    .line 369
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 327
    :cond_2
    return-void

    .line 342
    .restart local v0    # "policyWindow":Z
    :sswitch_0
    const/4 v0, 0x0

    .line 343
    goto :goto_0

    .line 332
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x8ae -> :sswitch_0
        0x8ca -> :sswitch_0
        0x8cf -> :sswitch_0
    .end sparse-switch
.end method

.method public beginLayoutLw(IIIIIII)V
    .locals 9
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I
    .param p4, "overscanScreenLeft"    # I
    .param p5, "overscanScreenTop"    # I
    .param p6, "overscanScreenWidth"    # I
    .param p7, "overscanScreenHeight"    # I

    .prologue
    .line 274
    iput p3, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarDirection:I

    .line 276
    iget v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mWakeupKeyCode:I

    const/16 v1, 0x42f

    if-ne v0, v1, :cond_0

    .line 277
    add-int/lit8 v0, p3, 0x2

    rem-int/lit8 p3, v0, 0x4

    .line 280
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 291
    sget-object v0, Lcom/android/server/policy/EdgeWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailSize:I

    sub-int v1, p1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v1, Lcom/android/server/policy/EdgeWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/policy/EdgeWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    .line 297
    sget-object v3, Lcom/android/server/policy/EdgeWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/policy/EdgeWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/server/policy/EdgeWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    sget-object v7, Lcom/android/server/policy/EdgeWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v8, 0x0

    .line 296
    invoke-interface/range {v0 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 298
    const-string v0, "EdgeWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTmpCocktailBar frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/policy/EdgeWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    return-void

    .line 282
    :pswitch_0
    sget-object v0, Lcom/android/server/policy/EdgeWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailSize:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 285
    :pswitch_1
    sget-object v0, Lcom/android/server/policy/EdgeWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailSize:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 288
    :pswitch_2
    sget-object v0, Lcom/android/server/policy/EdgeWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailSize:I

    sub-int v1, p2, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 630
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "--- EdgeWindowPolicy ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCocktailBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    .line 637
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCocktailBarBackground="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 639
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingRemoveBackground="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 640
    iget-boolean v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mPendingRemoveBackground:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 643
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnabledCocktailRotationAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    iget-boolean v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mEnabledCocktailRotationAnimation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 646
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 649
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyAppWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 652
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyWindowType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    iget v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 655
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyWindowVisiblity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    iget-boolean v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowVisiblity:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 629
    return-void
.end method

.method finishPostLayoutPolicyLw()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public getBackgroundWindow()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method public getCocktailBarFrame(Landroid/view/WindowManagerPolicy$WindowState;Z)Landroid/graphics/Rect;
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "policy"    # Z

    .prologue
    const/4 v2, 0x0

    .line 483
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 484
    .local v0, "cocktailFrame":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarDirection:I

    packed-switch v1, :pswitch_data_0

    .line 495
    iget v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailSize:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 497
    :goto_0
    return-object v0

    .line 486
    :pswitch_0
    iget v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailSize:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 489
    :pswitch_1
    iget v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailSize:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 492
    :pswitch_2
    iget v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailSize:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPendingRemoveBackground()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mPendingRemoveBackground:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 620
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 623
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 622
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/SamsungWindowManagerPolicy;Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p4, "spwm"    # Lcom/android/server/policy/SamsungWindowManagerPolicy;
    .param p5, "systemGestures"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;
    .param p6, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/policy/EdgeWindowManager;->mContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/android/server/policy/EdgeWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 141
    iput-object p3, p0, Lcom/android/server/policy/EdgeWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 142
    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 143
    iput-object p4, p0, Lcom/android/server/policy/EdgeWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    .line 144
    iput-object p5, p0, Lcom/android/server/policy/EdgeWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 145
    iput-object p6, p0, Lcom/android/server/policy/EdgeWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 147
    new-instance v0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;-><init>(Lcom/android/server/policy/EdgeWindowManager;Lcom/android/server/policy/EdgeWindowManager$MessageHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mHandler:Landroid/os/Handler;

    .line 138
    return-void
.end method

.method public initCocktailBarSize(I)V
    .locals 3
    .param p1, "density"    # I

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 153
    .local v0, "baseDensity":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/framework/res/R$dimen;->cocktail_bar_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v1, p1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailSize:I

    .line 154
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mStatusBarHeight:I

    .line 150
    return-void

    .line 152
    .end local v0    # "baseDensity":I
    :cond_0
    const/16 v0, 0xa0

    .restart local v0    # "baseDensity":I
    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;II)I
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "result"    # I
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 238
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 239
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 241
    .local v1, "keyCode":I
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 242
    packed-switch v1, :pswitch_data_0

    .line 252
    and-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_0

    if-ne v1, v5, :cond_1

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/EdgeWindowManager;->isEdgeWakeupPending()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    invoke-virtual {p0, v3, v4}, Lcom/android/server/policy/EdgeWindowManager;->requestEdgeScreenWakeup(ZI)V

    .line 255
    if-ne v1, v5, :cond_1

    .line 256
    and-int/lit8 p2, p2, -0x2

    .line 264
    :cond_1
    :goto_1
    return p2

    .line 238
    .end local v0    # "down":Z
    .end local v1    # "keyCode":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "down":Z
    goto :goto_0

    .line 246
    .restart local v1    # "keyCode":I
    :pswitch_0
    iput v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mWakeupKeyCode:I

    .line 248
    invoke-virtual {p0, v4}, Lcom/android/server/policy/EdgeWindowManager;->requestCocktailRotationAnimation(Z)V

    .line 249
    invoke-virtual {p0, v4, v3, v4}, Lcom/android/server/policy/EdgeWindowManager;->requestEdgeScreenWakeup(ZIZ)V

    goto :goto_1

    .line 242
    :pswitch_data_0
    .packed-switch 0x42d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isCocktailRotationAnimationNeeded()Z
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isForceHideBySViewCover()Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    invoke-virtual {p0}, Lcom/android/server/policy/EdgeWindowManager;->isEdgeWakeupPending()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mEnabledCocktailRotationAnimation:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 512
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isEdgeWakeupPending()Z
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    if-nez v0, :cond_0

    .line 535
    const-class v0, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->getCocktaiBarWakeUpStateFromWindowManager()Z

    move-result v0

    return v0

    .line 541
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isStatusBarVisible()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    .line 158
    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "pf"    # Landroid/graphics/Rect;
    .param p5, "df"    # Landroid/graphics/Rect;
    .param p6, "of"    # Landroid/graphics/Rect;
    .param p7, "cf"    # Landroid/graphics/Rect;
    .param p8, "vf"    # Landroid/graphics/Rect;
    .param p9, "dcf"    # Landroid/graphics/Rect;

    .prologue
    .line 312
    iget v0, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v0, :pswitch_data_0

    .line 317
    const/4 v0, 0x0

    return v0

    .line 314
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x8ac
        :pswitch_0
    .end packed-switch
.end method

.method public needForceHide(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v0, 0x0

    .line 321
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x62

    if-ne v1, v2, :cond_1

    .line 322
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mFocusedFloatingSubWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 324
    :cond_1
    return v0
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x7

    .line 205
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v0, :pswitch_data_0

    .line 234
    :goto_0
    return v4

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mContext:Landroid/content/Context;

    .line 208
    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    .line 209
    const-string v2, "PhoneWindowManager"

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    return v3

    .line 215
    :cond_0
    iput-object p1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 216
    const-string v0, "EdgeWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COCKTAIL BAR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mContext:Landroid/content/Context;

    .line 221
    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    .line 222
    const-string v2, "PhoneWindowManager"

    .line 220
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    return v3

    .line 228
    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    .line 229
    iput-boolean v4, p0, Lcom/android/server/policy/EdgeWindowManager;->mPendingRemoveBackground:Z

    .line 230
    const-string v0, "EdgeWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COCKTAIL BAR BACKGROUND : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x8ac
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    .line 198
    iput-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 200
    iput-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public requestCocktailRotationAnimation(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 501
    sget-boolean v0, Lcom/android/server/policy/EdgeWindowManager;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/EdgeWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 502
    const-string v0, "EdgeWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCocktailRotationAnimation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 503
    const-string v2, ", Callers="

    .line 502
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 503
    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 502
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/EdgeWindowManager;->mEnabledCocktailRotationAnimation:Z

    .line 500
    return-void
.end method

.method public requestEdgeScreenWakeup(ZI)V
    .locals 1
    .param p1, "wakeUpOn"    # Z
    .param p2, "reason"    # I

    .prologue
    .line 545
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/EdgeWindowManager;->requestEdgeScreenWakeup(ZIZ)V

    .line 544
    return-void
.end method

.method public requestEdgeScreenWakeup(ZIZ)V
    .locals 5
    .param p1, "wakeUpOn"    # Z
    .param p2, "reason"    # I
    .param p3, "force"    # Z

    .prologue
    const/4 v4, 0x1

    .line 549
    invoke-virtual {p0}, Lcom/android/server/policy/EdgeWindowManager;->isEdgeWakeupPending()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_1

    .line 551
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 552
    iget v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mEdgeScreenWakeupReason:I

    if-ne v1, p2, :cond_2

    .line 553
    return-void

    .line 549
    :cond_1
    return-void

    .line 555
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    :cond_3
    iput p2, p0, Lcom/android/server/policy/EdgeWindowManager;->mEdgeScreenWakeupReason:I

    .line 558
    iget-object v2, p0, Lcom/android/server/policy/EdgeWindowManager;->mHandler:Landroid/os/Handler;

    .line 559
    if-eqz p3, :cond_4

    iget v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mWakeupKeyCode:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 558
    invoke-virtual {v2, v4, v1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 560
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 561
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 548
    return-void

    .line 559
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public requestEdgeScreenWakeupIfNeeded(Landroid/view/WindowManagerPolicy$WindowState;Z)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "doNotWakeUpOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 565
    invoke-virtual {p0}, Lcom/android/server/policy/EdgeWindowManager;->isEdgeWakeupPending()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 567
    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 568
    const/high16 v1, 0x200000

    .line 567
    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 569
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/policy/EdgeWindowManager;->requestEdgeScreenWakeup(ZI)V

    .line 564
    :cond_1
    :goto_0
    return-void

    .line 570
    :cond_2
    if-eqz p2, :cond_3

    .line 571
    return-void

    .line 572
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/EdgeWindowManager;->requestEdgeScreenWakeup(ZI)V

    goto :goto_0
.end method

.method public requestTransientCocktailBar()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    return-void

    .line 172
    :cond_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    :cond_2
    const-string v1, "EdgeWindowManager"

    const-string v2, "Not showing transient bar, becuase Factory mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 178
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_4

    .line 179
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktailBarVisibility(I)V

    .line 166
    :cond_4
    return-void
.end method

.method public selectRotationAnimationLw([I)V
    .locals 2
    .param p1, "anim"    # [I

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/android/server/policy/EdgeWindowManager;->isCocktailRotationAnimationNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const v0, 0x10a0087

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 615
    const v0, 0x10a0086

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 612
    :cond_0
    return-void
.end method

.method public setPendingRemoveBackground(Z)V
    .locals 1
    .param p1, "pending"    # Z

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/EdgeWindowManager;->mPendingRemoveBackground:Z

    .line 519
    :cond_0
    return-void
.end method

.method public shouldIgnoreForcingOrientation(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/android/server/policy/EdgeWindowManager;->isCocktailRotationAnimationNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/EdgeWindowManager;->getPendingRemoveBackground()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCocktailBarVisibility(Z)Z
    .locals 6
    .param p1, "visibility"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, "changes":Z
    iget-object v3, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    .line 589
    iget-boolean v3, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowVisiblity:Z

    if-eq v3, p1, :cond_0

    move v0, v1

    .line 590
    .local v0, "changes":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 591
    iput-boolean p1, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowVisiblity:Z

    .line 592
    const-string v3, "EdgeWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCocktailBarVisibility : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowVisiblity:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget v3, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 594
    iget-boolean v3, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowVisiblity:Z

    if-eqz v3, :cond_1

    .line 595
    iget-object v3, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v1}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 599
    :goto_1
    return v2

    .local v0, "changes":Z
    :cond_0
    move v0, v2

    .line 589
    goto :goto_0

    .line 597
    .local v0, "changes":Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v1}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_1

    .line 601
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/policy/EdgeWindowManager;->mPolicyWindowVisiblity:Z

    if-eqz v3, :cond_3

    .line 602
    iget-object v3, p0, Lcom/android/server/policy/EdgeWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v1}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 603
    return v2

    .line 609
    .end local v0    # "changes":Z
    :cond_3
    return v0
.end method

.method public updateGripState(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "delay"    # I

    .prologue
    const/4 v3, 0x2

    .line 578
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 582
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 583
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 577
    return-void
.end method

.method public windowTypeToLayerLw(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 184
    packed-switch p1, :pswitch_data_0

    .line 193
    const/4 v0, -0x1

    return v0

    .line 186
    :pswitch_0
    const/16 v0, 0x1b

    return v0

    .line 190
    :pswitch_1
    const/16 v0, 0x1c

    return v0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x8ac
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

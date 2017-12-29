.class public Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;
.super Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.source "EdgeCocktailBarStatePolicy.java"


# static fields
.field private static final COCKTAIL_BAR_STATE_LOCK_INVISIBLE:I = 0x6

.field private static final COCKTAIL_BAR_STATE_LOCK_SHOW_BY_APP:I = 0x20000

.field private static final COCKTAIL_BAR_STATE_LOCK_SHOW_BY_SYSTEM:I = 0x10000

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final COCKTAIL_BAR_SHOWING_DURATION:I

.field private final mCocktailSize:I

.field private mCurrentCocktailSize:I

.field private mDimBackground:Z

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    .line 19
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowManager:Landroid/view/IWindowManager;

    .line 23
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->COCKTAIL_BAR_SHOWING_DURATION:I

    .line 32
    iput-boolean v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    .line 36
    iput v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCurrentCocktailSize:I

    .line 40
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowManager:Landroid/view/IWindowManager;

    .line 41
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCocktailSize:I

    .line 38
    return-void
.end method

.method private canUpdateVisibility(III)Z
    .locals 5
    .param p1, "windowType"    # I
    .param p2, "visibility"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 322
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canUpdateVisibility: visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 324
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 324
    const-string v2, " windowType = "

    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-ne p2, v0, :cond_2

    .line 327
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 328
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v1, "canUpdateVisibility: visibility is same as the current one"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    return v3

    .line 332
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 354
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canUpdateVisibility: invalide type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return v3

    .line 334
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 335
    return v4

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_4

    .line 337
    return v3

    .line 339
    :cond_4
    return v4

    .line 342
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 343
    return v3

    .line 344
    :cond_5
    const/4 v0, 0x6

    if-eq p1, v0, :cond_6

    .line 345
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 347
    :cond_6
    return v4

    .line 346
    :cond_7
    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    .line 348
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_8

    .line 349
    return v3

    .line 351
    :cond_8
    return v4

    nop

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private compareStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I
    .locals 3
    .param p1, "a"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .param p2, "b"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "changeFlag":I
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-eq v1, v2, :cond_0

    .line 433
    const/4 v0, 0x1

    .line 435
    :cond_0
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    if-eq v1, v2, :cond_1

    .line 436
    or-int/lit8 v0, v0, 0x2

    .line 438
    :cond_1
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    if-eq v1, v2, :cond_2

    .line 439
    or-int/lit8 v0, v0, 0x8

    .line 441
    :cond_2
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    if-eq v1, v2, :cond_3

    .line 442
    or-int/lit8 v0, v0, 0x20

    .line 444
    :cond_3
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    if-eq v1, v2, :cond_4

    .line 445
    or-int/lit8 v0, v0, 0x10

    .line 447
    :cond_4
    iget-boolean v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iget-boolean v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eq v1, v2, :cond_5

    .line 448
    or-int/lit8 v0, v0, 0x40

    .line 450
    :cond_5
    return v0
.end method

.method private getCurrentStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 3

    .prologue
    .line 411
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 412
    .local v0, "currentStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    .line 413
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 414
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 415
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 416
    return-object v0
.end method

.method private needToRefreshHideTimer(I)Z
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 313
    if-ne p1, v3, :cond_0

    .line 314
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_0

    .line 316
    return v3

    .line 318
    :cond_0
    return v2
.end method

.method private needToUpdateVisibility(III)Z
    .locals 8
    .param p1, "windowType"    # I
    .param p2, "visibility"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 360
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToUpdateVisibility: visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 362
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 362
    const-string v2, " windowType = "

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-ne p2, v0, :cond_2

    .line 365
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 366
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v1, "needToUpdateVisibility: visibility is same as the current one"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_1
    return v3

    .line 370
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 396
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToUpdateVisibility: invalid type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return v3

    .line 372
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 373
    return v4

    .line 374
    :cond_3
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_4

    .line 375
    return v3

    .line 376
    :cond_4
    if-eq p1, v7, :cond_5

    .line 377
    if-ne p1, v6, :cond_6

    .line 379
    :cond_5
    return v3

    .line 378
    :cond_6
    if-eq p1, v5, :cond_5

    .line 380
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_7

    .line 381
    return v4

    .line 383
    :cond_7
    return v3

    .line 386
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 387
    return v3

    .line 388
    :cond_8
    if-eq p1, v7, :cond_9

    .line 389
    if-ne p1, v6, :cond_a

    .line 391
    :cond_9
    return v4

    .line 390
    :cond_a
    if-eq p1, v5, :cond_9

    .line 393
    return v3

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyStateInfoIfNeeds(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .locals 3
    .param p1, "oldStateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 421
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    .line 422
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 423
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 424
    invoke-direct {p0, v0, p1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->compareStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 425
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    if-lez v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 419
    :cond_0
    return-void
.end method

.method private updateCocktailBarVisibility(IJ)V
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "delayMillis"    # J

    .prologue
    .line 402
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 403
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->sendMessageChangeVisibility(IJ)V

    .line 401
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleChangeVisibility(I)V

    goto :goto_0
.end method

.method private updateSysfsBarLength()V
    .locals 3

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 456
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 457
    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCocktailSize:I

    div-int/lit8 v0, v1, 0x2

    .line 461
    .local v0, "temp":I
    :goto_0
    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCurrentCocktailSize:I

    if-eq v0, v1, :cond_0

    .line 462
    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCurrentCocktailSize:I

    .line 463
    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCurrentCocktailSize:I

    invoke-static {v1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsBarLength(I)V

    .line 453
    :cond_0
    return-void

    .line 459
    .end local v0    # "temp":I
    :cond_1
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCocktailSize:I

    .restart local v0    # "temp":I
    goto :goto_0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    .line 307
    invoke-super {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->dump()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDimBackground : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    return-object v0
.end method

.method public getBackgroundType()I
    .locals 4

    .prologue
    .line 280
    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    packed-switch v1, :pswitch_data_0

    .line 292
    iget-boolean v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    if-eqz v1, :cond_1

    .line 293
    const/4 v0, 0x2

    .line 298
    .local v0, "bgType":I
    :goto_0
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 299
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackgroundType: bgType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWindowType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 300
    const-string v3, " mDimBackground = "

    .line 299
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 300
    iget-boolean v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    .line 299
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    return v0

    .line 282
    .end local v0    # "bgType":I
    :pswitch_0
    const/4 v0, 0x2

    .line 283
    .restart local v0    # "bgType":I
    goto :goto_0

    .line 289
    .end local v0    # "bgType":I
    :pswitch_1
    const/4 v0, 0x1

    .line 290
    .restart local v0    # "bgType":I
    goto :goto_0

    .line 295
    .end local v0    # "bgType":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "bgType":I
    goto :goto_0

    nop

    .line 280
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleChangeVisibility(I)V
    .locals 7
    .param p1, "visibility"    # I

    .prologue
    const/4 v6, 0x1

    .line 251
    sget-boolean v3, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 252
    sget-object v3, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleChangeVisibility: visibility = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    const v1, 0x30001

    .line 256
    .local v1, "mask":I
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const v4, 0x30001

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getCurrentStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v2

    .line 258
    .local v2, "newStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput p1, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iput p1, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 259
    iput v6, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 260
    if-ne p1, v6, :cond_2

    const/4 v0, 0x1

    .line 250
    .end local v2    # "newStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_1
    :goto_0
    return-void

    .line 261
    .restart local v2    # "newStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_2
    const/4 v0, 0x0

    .local v0, "bVisibility":Z
    goto :goto_0
.end method

.method public handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 235
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 236
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "handleNotifyCurrentStateToBinder"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 239
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    .line 240
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 241
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 242
    const/16 v1, 0x5b

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 246
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, p1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarStateToBinder(Landroid/os/IBinder;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 234
    return-void
.end method

.method public handleNotifyState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 222
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 223
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNotifyCurrentState : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 226
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    .line 227
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 228
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 229
    iput p1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 230
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 221
    return-void
.end method

.method public handleRefreshState()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 204
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRefreshState: mWindowType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    if-ne v0, v4, :cond_1

    .line 209
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 212
    invoke-virtual {p0, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    .line 203
    :cond_2
    :goto_0
    return-void

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_4

    .line 214
    invoke-virtual {p0, v4}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_0

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const/high16 v1, 0x30000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {p0, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_0
.end method

.method public handleUpdateActivate(Z)V
    .locals 4
    .param p1, "activate"    # Z

    .prologue
    .line 182
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 183
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLockState: mActivate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-boolean v3, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " activate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-boolean v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eq v1, p1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 188
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    .line 189
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 190
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 191
    iput-boolean p1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 192
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 193
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 181
    .end local v0    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_1
    return-void
.end method

.method public handleUpdateCocktailBarWindowType(ILjava/lang/String;)V
    .locals 0
    .param p1, "windowType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 198
    return-void
.end method

.method public handleUpdatePosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 144
    return-void
.end method

.method public handleUpdateState(ZZ)V
    .locals 8
    .param p1, "shift"    # Z
    .param p2, "dimBackground"    # Z

    .prologue
    .line 149
    sget-boolean v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 150
    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUpdateStatus: shift = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dimBackground = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    const-wide/16 v2, 0x64

    .line 154
    .local v2, "delay":J
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getCurrentStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 155
    .local v0, "backupStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    const v1, 0x30001

    .line 157
    .local v1, "mask":I
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    .line 158
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v5, -0x1

    iput v5, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 159
    if-nez p1, :cond_2

    .line 160
    const/high16 v4, 0x20000

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    .line 161
    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    .line 162
    const/4 v5, 0x1

    const v6, 0x30001

    .line 161
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    const/4 v4, 0x1

    const-wide/16 v6, 0x64

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    .line 176
    :goto_0
    iput-boolean p2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    .line 177
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->notifyStateInfoIfNeeds(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 148
    return-void

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    goto :goto_0

    .line 168
    :cond_2
    const/high16 v4, 0x20000

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    .line 169
    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    .line 170
    const/4 v5, 0x2

    const v6, 0x30001

    .line 169
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 171
    const/4 v4, 0x2

    const-wide/16 v6, 0x64

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    goto :goto_0

    .line 173
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    goto :goto_0
.end method

.method public handleUpdateStateFromSystem(IZ)V
    .locals 13
    .param p1, "windowType"    # I
    .param p2, "delayed"    # Z

    .prologue
    const/4 v12, -0x1

    const-wide/16 v10, 0x64

    const v9, 0x20001

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 73
    sget-boolean v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 74
    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUpdateStateFromSystem: Current Info windowType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 75
    const-string v6, " visibility = "

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 75
    iget-object v6, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v6, v6, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUpdateStateFromSystem: New windowType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->hasMessageUpdateStateFromSystemDelayed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageUpdateStateFromSystemDelayed()V

    .line 81
    :cond_1
    if-nez p2, :cond_2

    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 82
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    .line 83
    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v5, "handleUpdateStateFromSystem: updateStateFromSystemDelayed from keyguard to statusbar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->sendMessageUpdateStateFromSystemDelayed(IJ)V

    .line 85
    return-void

    .line 87
    :cond_2
    const-wide/16 v2, 0x64

    .line 88
    .local v2, "delay":J
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getCurrentStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 89
    .local v0, "backupStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    const v1, 0x20001

    .line 91
    .local v1, "mask":I
    packed-switch p1, :pswitch_data_0

    .line 122
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    .line 123
    const/high16 v4, 0x10000

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    .line 124
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v12, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 125
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v7, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 126
    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 128
    invoke-direct {p0, v8, v10, v11}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    .line 137
    :goto_0
    iput p1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    .line 138
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->notifyStateInfoIfNeeds(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 139
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateSysfsBarLength()V

    .line 72
    return-void

    .line 95
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    .line 96
    const/high16 v4, 0x10000

    invoke-virtual {p0, v4, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    .line 97
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v12, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 98
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v7, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 99
    invoke-direct {p0, p1, v7, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 101
    invoke-direct {p0, v7, v10, v11}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v8, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 108
    const/high16 v4, 0x10000

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    .line 109
    const/16 v4, 0xbb8

    invoke-virtual {p0, v4}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->refreshHideTimer(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 110
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v12, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 111
    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 113
    invoke-direct {p0, v8, v10, v11}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    goto :goto_0

    .line 118
    :cond_5
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/16 v5, 0xbb8

    iput v5, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    goto :goto_0

    .line 129
    :cond_6
    invoke-direct {p0, p1, v7, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->needToUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 131
    invoke-direct {p0, v7, v10, v11}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    goto :goto_0

    .line 133
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleUpdateVisibility(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    const/16 v5, 0xbb8

    .line 49
    sget-boolean v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 50
    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateVisibility: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWindowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 51
    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getCurrentStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 54
    .local v0, "backupStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    const v1, 0x30001

    .line 56
    .local v1, "mask":I
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->needToRefreshHideTimer(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    invoke-virtual {p0, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->refreshHideTimer(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    invoke-virtual {p0, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->startHideTimer(I)V

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v5, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 65
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->notifyStateInfoIfNeeds(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 66
    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const v3, 0x30001

    invoke-direct {p0, v2, p1, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    .line 48
    :cond_2
    return-void

    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    .line 63
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v3, -0x1

    iput v3, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    goto :goto_0
.end method

.class public abstract Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;
.implements Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;
.implements Lcom/samsung/android/app/musiclibrary/ui/WindowFocusObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionManagerHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$WindowFocusObservers;,
        Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;,
        Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;,
        Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;,
        Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;,
        Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$ContextMenuObservers;,
        Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$PermissionResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PERMISSIONS_REQUEST_ALL_PERMISSIONS:I = 0x1

.field private static final SAVED_INSTANCE_STATE_IS_SHOWING_PERMISSION_DIALOG:Ljava/lang/String; = "saved_instance_state_is_showing_permission_dialog"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mCheckPermissionEnabled:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

.field private mContextMenuObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$ContextMenuObservers;

.field private mIsShowingPermissionDialog:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

.field private mMultiWindowSdkCompat:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

.field private final mOnKeyObserver:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;

.field private final mOnListActionModeObserver:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;

.field private mOnMultiWindowChangeListener:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

.field private final mOnMultiWindowModeChangedObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;

.field private mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

.field private mPermissionManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;",
            ">;"
        }
    .end annotation
.end field

.field private mResumed:Z

.field private mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

.field private mSettingFontChangeManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

.field private final mWindowFocusObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$WindowFocusObservers;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnKeyObserver:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;

    .line 74
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    .line 77
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnListActionModeObserver:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;

    .line 80
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$WindowFocusObservers;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$WindowFocusObservers;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mWindowFocusObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$WindowFocusObservers;

    .line 82
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$ContextMenuObservers;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$ContextMenuObservers;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mContextMenuObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$ContextMenuObservers;

    .line 99
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnMultiWindowModeChangedObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mCheckPermissionEnabled:Z

    .line 621
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnMultiWindowChangeListener:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnMultiWindowModeChangedObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;

    return-object v0
.end method

.method protected static hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 475
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 476
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 477
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 482
    .end local v0    # "permission":Ljava/lang/String;
    :goto_1
    return v1

    .line 476
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isPermissionRequired(Ljava/lang/String;)Z
    .locals 1
    .param p1, "p"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getRequiredPermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private requestPermissions()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 430
    const-string v3, "Ui"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requestPermissions()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v2, "unsatisfiedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getDesiredPermissions()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 434
    .local v1, "permission":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 435
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 438
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 439
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Request permission activity was called even though all permissions are satisfied."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 444
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v0, "neverAskedAgainPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 446
    .restart local v1    # "permission":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isPermissionRequired(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 447
    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->isPermissionAlreadyRequested(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 448
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 449
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 453
    .end local v1    # "permission":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 454
    const-string v3, "Ui"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " neverAskedAgainPermissions size is not zero"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const/4 v4, 0x3

    .line 457
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 455
    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onRequestRequiredPermissionGranted(I[Ljava/lang/String;)V

    .line 465
    :goto_2
    return-void

    .line 461
    :cond_5
    iput-boolean v7, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mIsShowingPermissionDialog:Z

    .line 463
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 462
    invoke-virtual {p0, v3, v7}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private setStatusBarEnabled(Landroid/view/Window;Z)V
    .locals 1
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "enabled"    # Z

    .prologue
    const/16 v0, 0x400

    .line 560
    if-eqz p2, :cond_0

    .line 561
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method public addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->addCallbacks(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 353
    return-void
.end method

.method public addContextMenuListener(Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mContextMenuObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$ContextMenuObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$ContextMenuObservers;->add(Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method public addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnKeyObserver:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;->add(Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method public addOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mSettingFontChangeManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->addOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    .line 523
    return-void
.end method

.method public addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnListActionModeObserver:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;->add(Ljava/lang/Object;)V

    .line 395
    return-void
.end method

.method public addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;)V
    .locals 3
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;

    .prologue
    .line 575
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnMultiWindowModeChangedObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;->add(Ljava/lang/Object;)V

    .line 577
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isInMultiWindowMode()Z

    move-result v0

    .line 583
    .local v0, "isMultiWindowMode":Z
    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;->onMultiWindowModeChanged(Z)V

    .line 584
    return-void

    .line 580
    .end local v0    # "isMultiWindowMode":Z
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mMultiWindowSdkCompat:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mMultiWindowSdkCompat:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    .line 581
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .restart local v0    # "isMultiWindowMode":Z
    :goto_1
    goto :goto_0

    .end local v0    # "isMultiWindowMode":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .prologue
    .line 734
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mWindowFocusObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$WindowFocusObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$WindowFocusObservers;->add(Ljava/lang/Object;)V

    .line 735
    return-void
.end method

.method protected final checkPermission()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 419
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getRequiredPermissions()[Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "requiredPermissions":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->requestPermissions()V

    .line 425
    .end local v0    # "requiredPermissions":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 749
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 750
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->cancelCommand()V

    .line 752
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected final getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 757
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_BIXBY:Z

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-nez v0, :cond_0

    .line 759
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    .line 764
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDesiredPermissions()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    .line 604
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    return-object v0
.end method

.method protected getRequiredPermissions()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 532
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final isResumedState()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mResumed:Z

    return v0
.end method

.method public varargs newPermissionManager(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 612
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mPermissionManagers:Ljava/util/List;

    if-nez v1, :cond_0

    .line 613
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mPermissionManagers:Ljava/util/List;

    .line 615
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mPermissionManagers:Ljava/util/List;

    .line 616
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;-><init>(ILandroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)V

    .line 617
    .local v0, "permissionManager":Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mPermissionManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    return-object v0
.end method

.method public onBottomBarMenuCreated()Z
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public onBottomBarMenuDestroyed()Z
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 222
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->setStatusBarEnabled(Landroid/view/Window;Z)V

    .line 226
    :cond_0
    return-void

    .line 223
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 284
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mContextMenuObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$ContextMenuObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$ContextMenuObservers;->notifyOnContextMenuClosed(Landroid/view/Menu;)V

    .line 286
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const-string v2, "Ui"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onCreate() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    const-string/jumbo v2, "saved_instance_state_is_showing_permission_dialog"

    .line 134
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mIsShowingPermissionDialog:Z

    .line 136
    :cond_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mSettingFontChangeManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    .line 137
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mSettingFontChangeManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 139
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_1

    .line 140
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnMultiWindowChangeListener:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mMultiWindowSdkCompat:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    .line 142
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/dex/DexBaseKeyController;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexBaseKeyController;-><init>(Landroid/app/Activity;)V

    .line 145
    .local v1, "dexBaseKeyController":Lcom/samsung/android/app/musiclibrary/ui/dex/DexBaseKeyController;
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    .line 148
    .end local v1    # "dexBaseKeyController":Lcom/samsung/android/app/musiclibrary/ui/dex/DexBaseKeyController;
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    move-result-object v0

    .line 149
    .local v0, "bixbyCompat":Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;
    if-eqz v0, :cond_3

    .line 153
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->setCurrentScreenState(Ljava/lang/String;)V

    .line 156
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 157
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 205
    const-string v0, "Ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mMultiWindowSdkCompat:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mMultiWindowSdkCompat:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->release()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mMultiWindowSdkCompat:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnKeyObserver:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;->clear()V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mWindowFocusObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$WindowFocusObservers;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$WindowFocusObservers;->clear()V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->destroy()V

    .line 216
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 217
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 308
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnKeyObserver:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;->notifyOnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 309
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 310
    sparse-switch p1, :sswitch_data_0

    .line 328
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 312
    :sswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->isLaunchSearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->launchSearch()V

    .line 315
    :cond_2
    const/4 v0, 0x1

    .line 316
    goto :goto_0

    .line 318
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->finish()V

    .line 319
    const/4 v0, 0x1

    .line 320
    goto :goto_0

    .line 322
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->openOptionsMenu()V

    .line 323
    const/4 v0, 0x1

    .line 324
    goto :goto_0

    .line 328
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 310
    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_2
        0x2d -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnKeyObserver:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;->notifyOnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onListActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnListActionModeObserver:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;->notifyActionModeFinished(Landroid/view/ActionMode;)V

    .line 390
    return-void
.end method

.method public onListActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnListActionModeObserver:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;->notifyActionModeStarted(Landroid/view/ActionMode;)V

    .line 385
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 569
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 570
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnMultiWindowModeChangedObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;->notifyMultiWindowModeChanged(Z)V

    .line 571
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 125
    const-string v0, "Ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onNewIntent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    :cond_0
    const-string v1, "Ui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onOptionsItemSelected() Activity is already isDestroyed or finishing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_1
    :goto_0
    return v0

    .line 265
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 267
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "0017"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onBackPressed()V

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 187
    const-string v0, "Ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mResumed:Z

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->disable()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->onActivityPaused(Landroid/app/Activity;)V

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 194
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v8, 0x64

    const/4 v6, 0x0

    .line 488
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    if-eqz v7, :cond_1

    if-ne p1, v8, :cond_1

    .line 490
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    invoke-virtual {v6, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->onRequestPermissionsResult([Ljava/lang/String;[I)V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mPermissionManagers:Ljava/util/List;

    if-eqz v7, :cond_2

    if-le p1, v8, :cond_2

    .line 494
    add-int/lit8 v1, p1, -0x64

    .line 495
    .local v1, "index":I
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mPermissionManagers:Ljava/util/List;

    add-int/lit8 v7, v1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    .line 496
    .local v4, "permissionManager":Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    invoke-virtual {v4, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->onRequestPermissionsResult([Ljava/lang/String;[I)V

    goto :goto_0

    .line 500
    .end local v1    # "index":I
    .end local v4    # "permissionManager":Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    :cond_2
    iput-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mIsShowingPermissionDialog:Z

    .line 501
    const/4 v2, 0x1

    .line 502
    .local v2, "isAllRequiredPermissionGranted":Z
    array-length v5, p2

    .line 503
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_4

    .line 504
    aget-object v7, p2, v0

    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isPermissionRequired(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 505
    aget-object v7, p2, v0

    invoke-static {p0, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->setPermissionRequested(Landroid/content/Context;Ljava/lang/String;)V

    .line 506
    aget v7, p3, v0

    if-eqz v7, :cond_3

    .line 507
    const/4 v2, 0x0

    .line 503
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 511
    :cond_4
    array-length v8, p2

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_0

    aget-object v3, p2, v7

    .line 512
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getRequiredPermissions()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 513
    if-eqz v2, :cond_6

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {p0, v6, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onRequestRequiredPermissionGranted(I[Ljava/lang/String;)V

    .line 511
    :cond_5
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_2

    .line 513
    :cond_6
    const/4 v6, 0x2

    goto :goto_3
.end method

.method protected onRequestRequiredPermissionGranted(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 547
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mResumed:Z

    .line 174
    const-string v0, "Ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->enable()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->onActivityResumed(Landroid/app/Activity;)V

    .line 179
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 230
    const-string/jumbo v0, "saved_instance_state_is_showing_permission_dialog"

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mIsShowingPermissionDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 236
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 237
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 162
    const-string v0, "Ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mIsShowingPermissionDialog:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mCheckPermissionEnabled:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->checkPermission()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->onActivityStarted(Landroid/app/Activity;)V

    .line 168
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 198
    const-string v0, "Ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->onActivityStopped(Landroid/app/Activity;)V

    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 201
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 729
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mWindowFocusObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$WindowFocusObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$WindowFocusObservers;->notify(Z)V

    .line 730
    return-void
.end method

.method public removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->removeCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 358
    return-void
.end method

.method public removeContextMenuListener(Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mContextMenuObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$ContextMenuObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$ContextMenuObservers;->remove(Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method public removeOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnKeyObserver:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;->remove(Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method public removeOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mSettingFontChangeManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->removeOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    .line 528
    return-void
.end method

.method public removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnListActionModeObserver:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;->remove(Ljava/lang/Object;)V

    .line 400
    return-void
.end method

.method public removeOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mOnMultiWindowModeChangedObservers:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;->remove(Ljava/lang/Object;)V

    .line 589
    return-void
.end method

.method protected final setCheckPermissionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mCheckPermissionEnabled:Z

    .line 543
    return-void
.end method

.method protected final setSearchLaunchable(Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;)V
    .locals 0
    .param p1, "searchLaunchable"    # Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    .line 348
    return-void
.end method

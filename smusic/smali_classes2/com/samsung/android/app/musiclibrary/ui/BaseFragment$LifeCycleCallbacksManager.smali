.class Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LifeCycleCallbacksManager"
.end annotation


# static fields
.field private static final ON_ACTIVITY_CREATED:I = 0x2

.field private static final ON_CREATED:I = 0x0

.field private static final ON_DESTROYED:I = 0x8

.field private static final ON_PAUSED:I = 0x5

.field private static final ON_RESUMED:I = 0x4

.field private static final ON_STARTED:I = 0x3

.field private static final ON_STOPPED:I = 0x6

.field private static final ON_VIEW_CREATED:I = 0x1

.field private static final ON_VIEW_DESTROYED:I = 0x7


# instance fields
.field private final mLifeCycleCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mLifeCycleState:I

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mView:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;

    .line 332
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacks:Ljava/util/Set;

    .line 356
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$1;

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;-><init>()V

    return-void
.end method


# virtual methods
.method addCallbacks(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "callbacks"    # Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .prologue
    .line 359
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleState:I

    packed-switch v0, :pswitch_data_0

    .line 395
    :goto_0
    :pswitch_0
    return-void

    .line 361
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 368
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-interface {p2, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    .line 372
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 422
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleState:I

    .line 423
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mSavedInstanceState:Landroid/os/Bundle;

    .line 424
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 425
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 427
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 428
    .restart local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1

    .line 430
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_1
    return-void
.end method

.method public onFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 403
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleState:I

    .line 404
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mSavedInstanceState:Landroid/os/Bundle;

    .line 405
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 406
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 408
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_0
    return-void
.end method

.method public onFragmentDestroyed(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 490
    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleState:I

    .line 491
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 492
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentDestroyed(Landroid/app/Fragment;)V

    goto :goto_0

    .line 494
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 495
    return-void
.end method

.method public onFragmentPaused(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 456
    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleState:I

    .line 457
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 458
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentPaused(Landroid/app/Fragment;)V

    goto :goto_0

    .line 460
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 461
    .restart local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentPaused(Landroid/app/Fragment;)V

    goto :goto_1

    .line 463
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_1
    return-void
.end method

.method public onFragmentResumed(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 445
    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleState:I

    .line 446
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 447
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentResumed(Landroid/app/Fragment;)V

    goto :goto_0

    .line 449
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 450
    .restart local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentResumed(Landroid/app/Fragment;)V

    goto :goto_1

    .line 452
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_1
    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 499
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 500
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 502
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 503
    .restart local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1

    .line 505
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_1
    return-void
.end method

.method public onFragmentStarted(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 434
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleState:I

    .line 435
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 436
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentStarted(Landroid/app/Fragment;)V

    goto :goto_0

    .line 438
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 439
    .restart local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentStarted(Landroid/app/Fragment;)V

    goto :goto_1

    .line 441
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_1
    return-void
.end method

.method public onFragmentStopped(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 467
    const/4 v1, 0x6

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleState:I

    .line 468
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 469
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentStopped(Landroid/app/Fragment;)V

    goto :goto_0

    .line 471
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 472
    .restart local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentStopped(Landroid/app/Fragment;)V

    goto :goto_1

    .line 474
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_1
    return-void
.end method

.method public onFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 412
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleState:I

    .line 413
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mView:Landroid/view/View;

    .line 414
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mSavedInstanceState:Landroid/os/Bundle;

    .line 415
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 416
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    .line 418
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_0
    return-void
.end method

.method public onFragmentViewDestroyed(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 478
    const/4 v1, 0x7

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleState:I

    .line 479
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 480
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentViewDestroyed(Landroid/app/Fragment;)V

    goto :goto_0

    .line 482
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 483
    .restart local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->onFragmentViewDestroyed(Landroid/app/Fragment;)V

    goto :goto_1

    .line 485
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 486
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleState:I

    .line 399
    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "isVisibleToUser"    # Z

    .prologue
    .line 509
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 510
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->setFragmentUserVisibleHint(Landroid/app/Fragment;Z)V

    goto :goto_0

    .line 512
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->mLifeCycleCallbacksBeforeViewCreated:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .line 513
    .restart local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;->setFragmentUserVisibleHint(Landroid/app/Fragment;Z)V

    goto :goto_1

    .line 515
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
    :cond_1
    return-void
.end method

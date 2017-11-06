.class public Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;
.super Ljava/lang/Object;
.source "SimpleFragmentLifeCycleAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLifeCycleCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCreatedCalled:Z

.field private mOnCreatedFinished:Z

.field private final mPendingOnCreateCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedInstanceState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mPendingOnCreateCallbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerMediaChangeObserver but it was already registered"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mOnCreatedFinished:Z

    if-nez v0, :cond_0

    .line 33
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mOnCreatedCalled:Z

    if-nez v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mPendingOnCreateCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onCreateCalled(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mSavedInstanceState:Landroid/os/Bundle;

    .line 68
    return-void
.end method

.method public onFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mOnCreatedCalled:Z

    .line 53
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mSavedInstanceState:Landroid/os/Bundle;

    .line 54
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mPendingOnCreateCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 55
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    invoke-interface {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onCreateCalled(Landroid/os/Bundle;)V

    goto :goto_0

    .line 57
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mPendingOnCreateCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 58
    return-void
.end method

.method public onFragmentDestroyed(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 107
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onDestroyCalled()V

    goto :goto_0

    .line 109
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 110
    return-void
.end method

.method public onFragmentPaused(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 88
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onPauseCalled()V

    goto :goto_0

    .line 90
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    :cond_0
    return-void
.end method

.method public onFragmentResumed(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 81
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onResumeCalled()V

    goto :goto_0

    .line 83
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    :cond_0
    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    return-void
.end method

.method public onFragmentStarted(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mOnCreatedFinished:Z

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 74
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onStartCalled()V

    goto :goto_0

    .line 76
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    :cond_0
    return-void
.end method

.method public onFragmentStopped(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 95
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onStopCalled()V

    goto :goto_0

    .line 97
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    :cond_0
    return-void
.end method

.method public onFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mSavedInstanceState:Landroid/os/Bundle;

    .line 63
    return-void
.end method

.method public onFragmentViewDestroyed(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 102
    return-void
.end method

.method public removeCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->mPendingOnCreateCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "isVisibleToUser"    # Z

    .prologue
    .line 120
    return-void
.end method

.class public Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;
.super Ljava/lang/Object;
.source "SimpleActivityLifeCycleAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;


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

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mPendingOnCreateCallbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerMediaChangeObserver but it was already registered"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mOnCreatedFinished:Z

    if-nez v0, :cond_0

    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mOnCreatedCalled:Z

    if-nez v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mPendingOnCreateCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onCreateCalled(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mOnCreatedCalled:Z

    .line 49
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mSavedInstanceState:Landroid/os/Bundle;

    .line 50
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mPendingOnCreateCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 51
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    invoke-interface {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onCreateCalled(Landroid/os/Bundle;)V

    goto :goto_0

    .line 53
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mPendingOnCreateCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 54
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 93
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onDestroyCalled()V

    goto :goto_0

    .line 95
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 96
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

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
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onPauseCalled()V

    goto :goto_0

    .line 76
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 67
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onResumeCalled()V

    goto :goto_0

    .line 69
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mOnCreatedFinished:Z

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 60
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onStartCalled()V

    goto :goto_0

    .line 62
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->mLifeCycleCallbacks:Ljava/util/List;

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
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onStopCalled()V

    goto :goto_0

    .line 83
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
    :cond_0
    return-void
.end method

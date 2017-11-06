.class Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LifeCycleCallbacksManager"
.end annotation


# instance fields
.field private final mActivityLifeCycleCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCreatedCalled:Z

.field private mOnCreatedFinished:Z

.field private final mPendingOnCreateCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedInstanceState:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mActivityLifeCycleCallbacks:Ljava/util/Set;

    .line 649
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mPendingOnCreateCallbacks:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallbacks(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callbacks"    # Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .prologue
    .line 652
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mActivityLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 653
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mOnCreatedFinished:Z

    if-nez v0, :cond_0

    .line 655
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mOnCreatedCalled:Z

    if-nez v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mPendingOnCreateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 673
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mOnCreatedCalled:Z

    .line 674
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mSavedInstanceState:Landroid/os/Bundle;

    .line 675
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mPendingOnCreateCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 676
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 678
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mPendingOnCreateCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 679
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 719
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mActivityLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 720
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_0

    .line 722
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mActivityLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 723
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 698
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mActivityLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 699
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0

    .line 701
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 691
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mActivityLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 692
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    .line 694
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 712
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mActivityLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 713
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 715
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 683
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mOnCreatedFinished:Z

    .line 684
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mActivityLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 685
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_0

    .line 687
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 705
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mActivityLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 706
    .local v0, "callbacks":Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    goto :goto_0

    .line 708
    .end local v0    # "callbacks":Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
    :cond_0
    return-void
.end method

.method public removeCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->mActivityLifeCycleCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 669
    return-void
.end method

.class public abstract Lcom/samsung/android/app/music/milk/MilkServiceFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "MilkServiceFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/MilkServiceFragment$MilkServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
        ">",
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment",
        "<TT;>;",
        "Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;",
        "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mMilkServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkServiceFragment;, "Lcom/samsung/android/app/music/milk/MilkServiceFragment<TT;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkServiceFragment;, "Lcom/samsung/android/app/music/milk/MilkServiceFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 85
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkServiceFragment;, "Lcom/samsung/android/app/music/milk/MilkServiceFragment<TT;>;"
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onApiCalled reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 90
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkServiceFragment;, "Lcom/samsung/android/app/music/milk/MilkServiceFragment<TT;>;"
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onApiHandled reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rspType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkServiceFragment;, "Lcom/samsung/android/app/music/milk/MilkServiceFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkServiceFragment$MilkServiceConnection;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment$MilkServiceConnection;-><init>(Lcom/samsung/android/app/music/milk/MilkServiceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->mMilkServiceConnection:Landroid/content/ServiceConnection;

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onMilkServiceConnected()V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/common/activity/MilkServiceStateObservable;

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStart() addOnServiceStateListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkServiceStateObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->mMilkServiceConnection:Landroid/content/ServiceConnection;

    .line 36
    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/activity/MilkServiceStateObservable;->addOnServiceStateListener(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 42
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkServiceFragment;, "Lcom/samsung/android/app/music/milk/MilkServiceFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/common/activity/MilkServiceStateObservable;

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStop() removeOnServiceStateListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkServiceStateObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->mMilkServiceConnection:Landroid/content/ServiceConnection;

    .line 45
    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/activity/MilkServiceStateObservable;->removeOnServiceStateListener(Landroid/content/ServiceConnection;)V

    .line 47
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onDestroy()V

    .line 48
    return-void
.end method

.method public onMilkServiceConnected()V
    .locals 3

    .prologue
    .line 60
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkServiceFragment;, "Lcom/samsung/android/app/music/milk/MilkServiceFragment<TT;>;"
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onMilkServiceConnected()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onMilkServiceDisconnected()V
    .locals 3

    .prologue
    .line 64
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkServiceFragment;, "Lcom/samsung/android/app/music/milk/MilkServiceFragment<TT;>;"
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onMilkServiceDisconnected()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

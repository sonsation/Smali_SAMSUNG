.class public abstract Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;
.super Lcom/samsung/android/app/music/milk/MilkServiceFragment;
.source "MilkDownloadServiceFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment$MilkDownloadServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
        ">",
        "Lcom/samsung/android/app/music/milk/MilkServiceFragment",
        "<TT;>;",
        "Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceGetter;"
    }
.end annotation


# instance fields
.field private downloadServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;, "Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment<TT;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;, "Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment<TT;>;"
    const-string v0, "MilkDownloadService"

    return-object v0
.end method

.method public getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;, "Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceGetter;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceGetter;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;, "Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment$MilkDownloadServiceConnection;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment$MilkDownloadServiceConnection;-><init>(Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->downloadServiceConnection:Landroid/content/ServiceConnection;

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->onMilkDownloadServiceConnected()V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/common/activity/MilkServiceStateObservable;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

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

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkServiceStateObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->downloadServiceConnection:Landroid/content/ServiceConnection;

    .line 49
    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/activity/MilkServiceStateObservable;->addOnServiceStateListener(Landroid/content/ServiceConnection;)V

    .line 51
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 76
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;, "Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/common/activity/MilkServiceStateObservable;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

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

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkServiceStateObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;->downloadServiceConnection:Landroid/content/ServiceConnection;

    .line 79
    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/activity/MilkServiceStateObservable;->removeOnServiceStateListener(Landroid/content/ServiceConnection;)V

    .line 81
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onDestroy()V

    .line 82
    return-void
.end method

.method public onMilkDownloadServiceConnected()V
    .locals 3

    .prologue
    .line 61
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;, "Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment<TT;>;"
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

    .line 62
    return-void
.end method

.method public onMilkServiceConnected()V
    .locals 0

    .prologue
    .line 56
    .local p0, "this":Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment;, "Lcom/samsung/android/app/music/milk/MilkDownloadServiceFragment<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onMilkServiceConnected()V

    .line 58
    return-void
.end method

.class Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem$1;
.super Ljava/lang/Object;
.source "PlayerMilkMenu.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem$1;->this$0:Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem$1;->this$0:Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;->access$000(Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 136
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 137
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->startActivity(Landroid/app/Activity;Z)V

    .line 140
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 145
    return-void
.end method

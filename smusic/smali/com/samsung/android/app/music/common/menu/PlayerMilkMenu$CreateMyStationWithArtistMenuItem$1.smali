.class Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem$1;
.super Ljava/lang/Object;
.source "PlayerMilkMenu.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem$1;->this$0:Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->startActivity(Landroid/app/Activity;Z)V

    .line 216
    :cond_0
    return-void
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 221
    return-void
.end method

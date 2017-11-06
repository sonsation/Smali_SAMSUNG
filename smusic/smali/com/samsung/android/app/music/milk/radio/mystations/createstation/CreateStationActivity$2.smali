.class Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$2;
.super Ljava/lang/Object;
.source "CreateStationActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->createPersonalStation(Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

.field final synthetic val$done:Landroid/view/MenuItem;

.field final synthetic val$fg:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;Landroid/view/MenuItem;Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$2;->val$done:Landroid/view/MenuItem;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$2;->val$fg:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->finish()V

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->access$102(Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;Z)Z

    .line 222
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$2;->val$done:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public showLoadingProgress(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$2;->val$fg:Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->showLoading(Z)V

    .line 227
    return-void
.end method

.class Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1;
.super Ljava/lang/Object;
.source "MyStationsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;->onOptionsItemSelected(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1;->this$1:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 3
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 282
    const-string v0, "MyStationsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWorkerFinished - Remove my stations result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1;->this$1:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->finishActionMode()V

    .line 288
    :cond_0
    return-void
.end method

.method public showLoadingProgress(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 292
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1;->this$1:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 293
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 294
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1$1;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    :cond_0
    return-void
.end method

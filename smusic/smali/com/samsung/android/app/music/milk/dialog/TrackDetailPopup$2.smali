.class Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup$2;
.super Ljava/lang/Object;
.source "TrackDetailPopup.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 569
    if-eqz p1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->access$000(Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;)Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->setFavoriteYn(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->access$100(Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;

    .line 572
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->access$000(Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;)Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isFavorite()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 574
    :cond_0
    return-void
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 579
    return-void
.end method

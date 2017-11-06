.class Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$7;
.super Ljava/lang/Object;
.source "ArtistDetailActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$7;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 3
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 561
    const-string v0, "ArtistDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWorkerFinished : isWorkerSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    if-eqz p1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$7;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->access$200(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$7;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->access$200(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->getArtistInfo()Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    move-result-object v0

    const-string v1, "0"

    .line 567
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->setFavoriteYn(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$7;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$7;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->access$200(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->showArtistInfo(Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;)V

    .line 571
    :cond_0
    return-void
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 576
    return-void
.end method

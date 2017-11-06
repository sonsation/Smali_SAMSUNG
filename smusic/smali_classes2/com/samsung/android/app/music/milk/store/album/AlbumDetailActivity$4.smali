.class Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$4;
.super Ljava/lang/Object;
.source "AlbumDetailActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$4;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 364
    if-eqz p1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$4;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->access$200(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)Lcom/samsung/android/app/music/common/model/Album;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Album;->setFavoriteYn(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$4;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->access$300(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;Z)V

    .line 368
    :cond_0
    return-void
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 373
    return-void
.end method

.class Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$3;
.super Ljava/lang/Object;
.source "AlbumDetailActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->showAlbumInfo(Lcom/samsung/android/app/music/common/model/AlbumInfo;)V
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
    .line 303
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->access$400(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->access$400(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->access$500(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->access$500(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->access$400(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setBackgroundResource(I)V

    .line 322
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 312
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 307
    return-void
.end method

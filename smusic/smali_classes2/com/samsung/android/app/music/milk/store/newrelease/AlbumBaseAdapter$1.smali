.class Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$1;
.super Ljava/lang/Object;
.source "AlbumBaseAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

.field final synthetic val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$1;->val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$1;->val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$1;->val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 73
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 68
    return-void
.end method

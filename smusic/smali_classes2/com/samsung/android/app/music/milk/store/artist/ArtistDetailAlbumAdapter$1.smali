.class Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$1;
.super Ljava/lang/Object;
.source "ArtistDetailAlbumAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;

.field final synthetic val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$1;->val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$1;->val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$1;->val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 62
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method

.class Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$2;
.super Ljava/lang/Object;
.source "PickListAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

.field final synthetic val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$2;->val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$2;->val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$2;->val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    const v1, 0x3ea576a2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setDimensRatio(F)V

    .line 108
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 102
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 97
    return-void
.end method

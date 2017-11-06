.class Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$3;
.super Ljava/lang/Object;
.source "PickDetailActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->showPickDetail(Lcom/samsung/android/app/music/common/model/PickInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->access$400(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->access$400(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->access$500(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->access$500(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->access$400(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v0

    const v1, 0x3ea576a2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setDimensRatio(F)V

    .line 254
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->access$400(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->access$500(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;->access$500(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 236
    return-void
.end method

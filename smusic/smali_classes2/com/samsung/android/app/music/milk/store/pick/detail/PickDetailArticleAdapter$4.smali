.class Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$4;
.super Ljava/lang/Object;
.source "PickDetailArticleAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

.field final synthetic val$article:Lcom/samsung/android/app/music/common/model/PickArticle;

.field final synthetic val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;Lcom/samsung/android/app/music/common/model/PickArticle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$4;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$4;->val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$4;->val$article:Lcom/samsung/android/app/music/common/model/PickArticle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 197
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$4;->val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$4;->val$article:Lcom/samsung/android/app/music/common/model/PickArticle;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/PickArticle;->getImageHeight()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$4;->val$article:Lcom/samsung/android/app/music/common/model/PickArticle;

    .line 200
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/PickArticle;->getImageWidth()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v1, v2, v3

    .line 201
    .local v1, "ratio":F
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$4;->val$imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setDimensRatio(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1    # "ratio":F
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v2, "PickDetailArticleAdapter"

    const-string v3, "onLoadingComplete() NumberFormatException. Images ratio is not set"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 193
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 188
    return-void
.end method

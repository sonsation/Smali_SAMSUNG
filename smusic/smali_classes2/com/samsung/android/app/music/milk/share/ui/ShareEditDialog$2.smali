.class Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$2;
.super Ljava/lang/Object;
.source "ShareEditDialog.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$2;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 192
    invoke-static {}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageLoadingListener : Loading complete."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$2;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->access$200(Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;)Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageLoadingListener : Loading failed."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageLoadingListener : Loading started."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

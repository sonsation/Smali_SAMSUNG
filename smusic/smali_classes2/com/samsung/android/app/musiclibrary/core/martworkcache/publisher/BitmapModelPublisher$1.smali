.class Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;
.super Ljava/lang/Object;
.source "BitmapModelPublisher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    .line 62
    .local v0, "p":Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$000(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getUser()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "ArtWork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publish to bitmap model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$000(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$000(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$200(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getDefaultAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$200(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$000(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->bitmapUpdated(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V

    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$200(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->requestRender()V

    .line 74
    :cond_1
    return-void

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$000(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

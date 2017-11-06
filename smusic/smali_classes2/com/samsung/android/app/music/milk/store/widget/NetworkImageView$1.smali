.class Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->listener:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->listener:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->requestedUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->requestedUrl:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->dispatchLoadingCompleted(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->listener:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->listener:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->requestedUrl:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->requestedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->dispatchLoadingFailed(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    const v1, 0x7f120021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setTag(ILjava/lang/Object;)V

    .line 56
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadingFailed : imageUri - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->requestedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", res - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget v2, v2, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mShowImageOnError:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->listener:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->listener:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->requestedUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;->onLoadingFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

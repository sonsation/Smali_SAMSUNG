.class Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;
.super Ljava/lang/Object;
.source "RadioDialView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isValidRequest(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 314
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->getLoadedUri(Landroid/os/Message;)Landroid/net/Uri;

    move-result-object v0

    .line 315
    .local v0, "currentLoadedUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$300(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 277
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 310
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 281
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->isValidRequest(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 282
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    .line 283
    .local v1, "loadedImage":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 284
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020249

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 287
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 288
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 292
    .end local v1    # "loadedImage":Landroid/graphics/Bitmap;
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->isValidRequest(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    const-string v2, "RadioDialView"

    const-string v3, "[mCallback] DECODE_FAILED"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$200(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 297
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$200(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 298
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$202(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 301
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020218

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$202(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 304
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .line 305
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$200(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    .local v0, "defaultCircleImage":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

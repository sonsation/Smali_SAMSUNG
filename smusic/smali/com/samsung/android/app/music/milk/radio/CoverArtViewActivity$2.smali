.class Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$2;
.super Ljava/lang/Object;
.source "CoverArtViewActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0x7f020249

    .line 50
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 54
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->access$000(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 56
    .local v0, "loadedImage":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 57
    const-string v1, "CoverArtViewActivity"

    const-string/jumbo v2, "onCreate : onLoadingComplete : loadImage is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->access$000(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 61
    :cond_1
    const-string v1, "CoverArtViewActivity"

    const-string/jumbo v2, "onCreate : onLoadingComplete : loadImage isn\'t null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    .end local v0    # "loadedImage":Landroid/graphics/Bitmap;
    :pswitch_2
    const-string v1, "CoverArtViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate : onLoadingFailed  imageUri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->access$100(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->access$200(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->access$200(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 71
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->access$202(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->access$202(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 75
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->access$000(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->access$200(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

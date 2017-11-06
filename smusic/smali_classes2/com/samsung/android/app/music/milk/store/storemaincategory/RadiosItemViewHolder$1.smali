.class Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder$1;
.super Ljava/lang/Object;
.source "RadiosItemViewHolder.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v5, 0x7f0200dc

    .line 40
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v4, 0x1

    return v4

    .line 44
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;

    iget-object v4, v4, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;

    if-eqz v4, :cond_0

    .line 45
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    .line 46
    .local v3, "loadedImage":Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 47
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;

    .line 48
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->access$000(Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 51
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;

    .line 52
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->access$000(Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    .local v0, "circleImage":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;

    iget-object v4, v4, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 57
    .end local v0    # "circleImage":Landroid/graphics/Bitmap;
    .end local v3    # "loadedImage":Landroid/graphics/Bitmap;
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;

    .line 58
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->access$000(Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 60
    .local v2, "defaultImage":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;

    .line 61
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->access$000(Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 62
    .local v1, "defaultCircleImage":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;

    iget-object v4, v4, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

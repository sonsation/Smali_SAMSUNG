.class Lcom/sec/android/app/camera/widget/gl/StickerView$1;
.super Landroid/os/Handler;
.source "StickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/gl/StickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/StickerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/StickerView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setTextBackgroundVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setTextBackgroundVisibility(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerView;

    iget-object v1, v1, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerView;

    iget-object v1, v1, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerView;

    iget-object v1, v1, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->access$000(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_UPDATE_MINUTES:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerView;

    iget-object v1, v1, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->getGLText()Lcom/samsung/android/glview/GLText;

    move-result-object v1

    const-string v2, "yyyy.MM.dd.kk:mm"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->access$100(Lcom/sec/android/app/camera/widget/gl/StickerView;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->access$100(Lcom/sec/android/app/camera/widget/gl/StickerView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

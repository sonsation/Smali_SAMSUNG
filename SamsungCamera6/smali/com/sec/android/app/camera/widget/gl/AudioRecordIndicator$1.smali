.class Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator$1;
.super Landroid/os/Handler;
.source "AudioRecordIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->access$000(Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->access$002(Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->access$200(Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->access$100(Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->access$000(Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->access$300(Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.class Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;
.super Landroid/os/Handler;
.source "SecEffectProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/secimaging/SecEffectProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mEffectProcessor:Lcom/samsung/android/secimaging/SecEffectProcessor;

.field final synthetic this$0:Lcom/samsung/android/secimaging/SecEffectProcessor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/secimaging/SecEffectProcessor;Lcom/samsung/android/secimaging/SecEffectProcessor;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/secimaging/SecEffectProcessor;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;->mEffectProcessor:Lcom/samsung/android/secimaging/SecEffectProcessor;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "SecEffectProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage, what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;->mEffectProcessor:Lcom/samsung/android/secimaging/SecEffectProcessor;

    invoke-static {v0}, Lcom/samsung/android/secimaging/SecEffectProcessor;->access$000(Lcom/samsung/android/secimaging/SecEffectProcessor;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "SecEffectProcessor"

    const-string v1, "SecEffectProcessor went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "SecEffectProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/secimaging/SecEffectProcessor;

    invoke-static {v0}, Lcom/samsung/android/secimaging/SecEffectProcessor;->access$100(Lcom/samsung/android/secimaging/SecEffectProcessor;)Lcom/samsung/android/secimaging/SecEffectProcessor$EffectProcessorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/secimaging/SecEffectProcessor;

    invoke-static {v0}, Lcom/samsung/android/secimaging/SecEffectProcessor;->access$100(Lcom/samsung/android/secimaging/SecEffectProcessor;)Lcom/samsung/android/secimaging/SecEffectProcessor$EffectProcessorListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/samsung/android/secimaging/SecEffectProcessor$EffectProcessorListener;->onInfo(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/secimaging/SecEffectProcessor;

    invoke-static {v0}, Lcom/samsung/android/secimaging/SecEffectProcessor;->access$100(Lcom/samsung/android/secimaging/SecEffectProcessor;)Lcom/samsung/android/secimaging/SecEffectProcessor$EffectProcessorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/secimaging/SecEffectProcessor;

    invoke-static {v0}, Lcom/samsung/android/secimaging/SecEffectProcessor;->access$100(Lcom/samsung/android/secimaging/SecEffectProcessor;)Lcom/samsung/android/secimaging/SecEffectProcessor$EffectProcessorListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/secimaging/SecEffectProcessor$EffectProcessorListener;->onPictureTaken(I[B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

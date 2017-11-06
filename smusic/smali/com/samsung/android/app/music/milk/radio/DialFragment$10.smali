.class Lcom/samsung/android/app/music/milk/radio/DialFragment$10;
.super Landroid/os/Handler;
.source "DialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/DialFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$10;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 601
    if-nez p1, :cond_0

    .line 613
    :goto_0
    return-void

    .line 605
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 610
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized request value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$10;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$1000(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    goto :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

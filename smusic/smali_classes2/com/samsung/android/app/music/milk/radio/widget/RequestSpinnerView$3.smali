.class Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$3;
.super Landroid/os/Handler;
.source "RequestSpinnerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$600(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$700(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;Landroid/database/Cursor;)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

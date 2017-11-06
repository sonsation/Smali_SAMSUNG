.class Lcom/samsung/android/app/music/milk/radio/DialFragment$3;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/DialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$3;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 238
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 243
    packed-switch p2, :pswitch_data_0

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 245
    :pswitch_0
    if-eqz p3, :cond_0

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$3;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/DialFragment$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$3$1;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

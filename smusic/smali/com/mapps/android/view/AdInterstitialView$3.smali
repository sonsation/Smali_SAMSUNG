.class Lcom/mapps/android/view/AdInterstitialView$3;
.super Landroid/os/Handler;
.source "AdInterstitialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdInterstitialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    .line 282
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 284
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 298
    :goto_0
    return-void

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->access$4(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    .line 291
    :pswitch_1
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->access$4(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->access$4(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

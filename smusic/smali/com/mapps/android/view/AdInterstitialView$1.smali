.class Lcom/mapps/android/view/AdInterstitialView$1;
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
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$1;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    .line 125
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$1;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$1;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView;->access$0(Lcom/mapps/android/view/AdInterstitialView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->access$1(Lcom/mapps/android/view/AdInterstitialView;Landroid/content/Context;)V

    .line 129
    return-void
.end method

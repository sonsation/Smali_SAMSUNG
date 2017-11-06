.class Lcom/mapps/android/view/EndingAdView$1;
.super Landroid/os/Handler;
.source "EndingAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/EndingAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$1;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 136
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$1;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$1;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$1(Lcom/mapps/android/view/EndingAdView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mapps/android/network/TraceGPS;->GetDeviceLocation(Landroid/content/Context;Z)V

    .line 140
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 141
    return-void
.end method

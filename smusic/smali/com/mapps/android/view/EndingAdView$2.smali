.class Lcom/mapps/android/view/EndingAdView$2;
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
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$2;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 237
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$2;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-boolean v0, v0, Lcom/mapps/android/view/EndingAdView;->adInterval:Z

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$2;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 v1, -0x3e8

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$2(Lcom/mapps/android/view/EndingAdView;I)V

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$2;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$2;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget v1, v1, Lcom/mapps/android/view/EndingAdView;->media_type:I

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$3(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0
.end method

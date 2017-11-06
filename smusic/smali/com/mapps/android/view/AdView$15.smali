.class Lcom/mapps/android/view/AdView$15;
.super Landroid/os/Handler;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$15;->this$0:Lcom/mapps/android/view/AdView;

    .line 2613
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2617
    if-eqz p1, :cond_0

    .line 2618
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2619
    .local v0, "banner":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 2620
    iget-object v1, p0, Lcom/mapps/android/view/AdView$15;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$41(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2621
    iget-object v1, p0, Lcom/mapps/android/view/AdView$15;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$41(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mapps/android/view/AdView$SDKWebView;->setBackImage(Landroid/graphics/drawable/Drawable;)V

    .line 2622
    iget-object v1, p0, Lcom/mapps/android/view/AdView$15;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v1}, Lcom/mapps/android/view/AdView;->invalidate()V

    .line 2626
    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

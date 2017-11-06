.class Lcom/mapps/android/view/AdView$SDKWebView$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKWebView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdView$SDKWebView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKWebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView$1;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    .line 1617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1620
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1630
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1623
    :pswitch_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$1;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKWebView$1;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {v1}, Lcom/mapps/android/view/AdView$SDKWebView;->isOtherType()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mapps/android/view/AdView$SDKWebView;->bGotolinkType:Z

    .line 1625
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1626
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1620
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

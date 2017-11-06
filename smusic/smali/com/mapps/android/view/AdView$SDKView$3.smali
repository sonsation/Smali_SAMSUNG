.class Lcom/mapps/android/view/AdView$SDKView$3;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdView$SDKView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKView$3;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    .line 2104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView$3;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKView;->playSoundEffect(I)V

    .line 2109
    invoke-static {}, Lcom/mapps/android/view/AdView;->access$50()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2110
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView$3;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKView;->access$2(Lcom/mapps/android/view/AdView$SDKView;)V

    .line 2114
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2112
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView$3;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKView;->access$3(Lcom/mapps/android/view/AdView$SDKView;)V

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKView$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

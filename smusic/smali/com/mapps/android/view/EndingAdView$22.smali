.class Lcom/mapps/android/view/EndingAdView$22;
.super Ljava/lang/Object;
.source "EndingAdView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->onTouchEvent(Landroid/view/MotionEvent;)Z
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
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$22;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 855
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$22;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$2(Lcom/mapps/android/view/EndingAdView;I)V

    .line 856
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$22;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MZUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$22;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0, v2}, Lcom/mapps/android/view/EndingAdView;->access$34(Lcom/mapps/android/view/EndingAdView;Z)V

    .line 858
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$22;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/EndingAdView;->playSoundEffect(I)V

    .line 859
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$22;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$35(Lcom/mapps/android/view/EndingAdView;)V

    .line 861
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView$22;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

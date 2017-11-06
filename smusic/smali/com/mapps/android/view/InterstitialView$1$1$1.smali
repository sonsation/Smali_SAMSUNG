.class Lcom/mapps/android/view/InterstitialView$1$1$1;
.super Ljava/lang/Object;
.source "InterstitialView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView$1$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$2:Lcom/mapps/android/view/InterstitialView$1$1;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView$1$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$1$1$1;->this$2:Lcom/mapps/android/view/InterstitialView$1$1;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$1$1$1;->this$2:Lcom/mapps/android/view/InterstitialView$1$1;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$1$1;->access$0(Lcom/mapps/android/view/InterstitialView$1$1;)Lcom/mapps/android/view/InterstitialView$1;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$1;->access$0(Lcom/mapps/android/view/InterstitialView$1;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$3(Lcom/mapps/android/view/InterstitialView;)V

    .line 312
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView$1$1$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

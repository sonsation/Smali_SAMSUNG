.class Lcom/mapps/android/view/InterstitialView$10$1;
.super Ljava/lang/Object;
.source "InterstitialView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView$10;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
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
.field final synthetic this$1:Lcom/mapps/android/view/InterstitialView$10;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView$10;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$10$1;->this$1:Lcom/mapps/android/view/InterstitialView$10;

    iput-object p2, p0, Lcom/mapps/android/view/InterstitialView$10$1;->val$url:Ljava/lang/String;

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/mapps/android/view/InterstitialView$10$1;)Lcom/mapps/android/view/InterstitialView$10;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$10$1;->this$1:Lcom/mapps/android/view/InterstitialView$10;

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 541
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$10$1;->this$1:Lcom/mapps/android/view/InterstitialView$10;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$10;->access$0(Lcom/mapps/android/view/InterstitialView$10;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/mapps/android/view/InterstitialView;->access$10(Lcom/mapps/android/view/InterstitialView;Z)V

    .line 546
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$10$1;->this$1:Lcom/mapps/android/view/InterstitialView$10;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$10;->access$0(Lcom/mapps/android/view/InterstitialView$10;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$11(Lcom/mapps/android/view/InterstitialView;)V

    .line 547
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/InterstitialView$10$1$1;

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$10$1;->val$url:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/mapps/android/view/InterstitialView$10$1$1;-><init>(Lcom/mapps/android/view/InterstitialView$10$1;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 566
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 567
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView$10$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

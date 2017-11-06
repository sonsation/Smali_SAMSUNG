.class Lcom/mapps/android/view/AdInterstitialView$12;
.super Ljava/lang/Object;
.source "AdInterstitialView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->ShowFrontView(Z)V
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
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$bnext:Z


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$12;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput-boolean p2, p0, Lcom/mapps/android/view/AdInterstitialView$12;->val$bnext:Z

    .line 257
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
    .line 261
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$12;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget-boolean v1, p0, Lcom/mapps/android/view/AdInterstitialView$12;->val$bnext:Z

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->access$22(Lcom/mapps/android/view/AdInterstitialView;Z)V

    .line 262
    const/4 v0, 0x0

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
    invoke-virtual {p0}, Lcom/mapps/android/view/AdInterstitialView$12;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

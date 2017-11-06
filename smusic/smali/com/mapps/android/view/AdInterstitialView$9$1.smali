.class Lcom/mapps/android/view/AdInterstitialView$9$1;
.super Ljava/lang/Object;
.source "AdInterstitialView.java"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView$9;->onAdvertisingId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdInterstitialView$9;

.field private final synthetic val$fun:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView$9;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$9$1;->this$1:Lcom/mapps/android/view/AdInterstitialView$9;

    iput-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$9$1;->val$fun:Ljava/util/concurrent/Callable;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AdViewCodeComplete(Z)V
    .locals 3
    .param p1, "checkInterval"    # Z

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$9$1;->this$1:Lcom/mapps/android/view/AdInterstitialView$9;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView$9;->access$0(Lcom/mapps/android/view/AdInterstitialView$9;)Lcom/mapps/android/view/AdInterstitialView;

    move-result-object v1

    iput-boolean p1, v1, Lcom/mapps/android/view/AdInterstitialView;->adInterval:Z

    .line 193
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$9$1;->val$fun:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$9$1;->this$1:Lcom/mapps/android/view/AdInterstitialView$9;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView$9;->access$0(Lcom/mapps/android/view/AdInterstitialView$9;)Lcom/mapps/android/view/AdInterstitialView;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mapps/android/view/AdInterstitialView;->adInterval:Z

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

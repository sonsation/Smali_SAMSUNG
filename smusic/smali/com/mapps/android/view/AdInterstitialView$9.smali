.class Lcom/mapps/android/view/AdInterstitialView$9;
.super Ljava/lang/Object;
.source "AdInterstitialView.java"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->startService(Ljava/util/concurrent/Callable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$fun:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$9;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$9;->val$fun:Ljava/util/concurrent/Callable;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdInterstitialView$9;)Lcom/mapps/android/view/AdInterstitialView;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$9;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    return-object v0
.end method


# virtual methods
.method public onAdvertisingId(Ljava/lang/String;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 187
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$9;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView;->access$0(Lcom/mapps/android/view/AdInterstitialView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$9;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/AdInterstitialView;->access$18(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$9;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$19(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/AdInterstitialView$9;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v4}, Lcom/mapps/android/view/AdInterstitialView;->access$20(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "java"

    new-instance v8, Lcom/mapps/android/view/AdInterstitialView$9$1;

    iget-object v6, p0, Lcom/mapps/android/view/AdInterstitialView$9;->val$fun:Ljava/util/concurrent/Callable;

    invoke-direct {v8, p0, v6}, Lcom/mapps/android/view/AdInterstitialView$9$1;-><init>(Lcom/mapps/android/view/AdInterstitialView$9;Ljava/util/concurrent/Callable;)V

    move v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/mapps/android/share/ShareUtil;->setAdViewCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V

    .line 200
    return-void
.end method

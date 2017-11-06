.class Lcom/mapps/android/view/AdInterstitialView$25;
.super Ljava/lang/Object;
.source "AdInterstitialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->requestImageFileSave(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$fileName:Ljava/lang/String;

.field private final synthetic val$filePath:Ljava/lang/String;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$25;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$25;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/mapps/android/view/AdInterstitialView$25;->val$fileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/mapps/android/view/AdInterstitialView$25;->val$handler:Landroid/os/Handler;

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 853
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$25;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$25;->val$filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$25;->val$fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$25;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/view/AdInterstitialView;->ImageFileSave(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 854
    return-void
.end method

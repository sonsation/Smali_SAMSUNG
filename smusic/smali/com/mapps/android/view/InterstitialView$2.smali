.class Lcom/mapps/android/view/InterstitialView$2;
.super Landroid/content/BroadcastReceiver;
.source "InterstitialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/InterstitialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/InterstitialView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    .line 732
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$4(Lcom/mapps/android/view/InterstitialView;)V

    .line 737
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$2;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-virtual {v0}, Lcom/mapps/android/view/InterstitialView;->finish()V

    .line 738
    return-void
.end method

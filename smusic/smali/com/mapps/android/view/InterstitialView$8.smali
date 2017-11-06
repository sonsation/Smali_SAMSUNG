.class Lcom/mapps/android/view/InterstitialView$8;
.super Ljava/lang/Object;
.source "InterstitialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView;->sspLanding()V
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
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$8;->this$0:Lcom/mapps/android/view/InterstitialView;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 335
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView$8;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/InterstitialView;->access$2(Lcom/mapps/android/view/InterstitialView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getLanding_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 336
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$8;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-virtual {v2, v1}, Lcom/mapps/android/view/InterstitialView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$8;->this$0:Lcom/mapps/android/view/InterstitialView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mapps/android/view/InterstitialView;->access$10(Lcom/mapps/android/view/InterstitialView;Z)V

    .line 340
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

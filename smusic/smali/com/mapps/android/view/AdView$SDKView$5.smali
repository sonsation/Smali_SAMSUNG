.class Lcom/mapps/android/view/AdView$SDKView$5;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKView;->sspLanding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdView$SDKView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKView$5;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    .line 2165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2169
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/mapps/android/view/AdView$SDKView$5;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView$SDKView;->access$4(Lcom/mapps/android/view/AdView$SDKView;)Lcom/mapps/android/view/AdView;

    move-result-object v3

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$55(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getLanding_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2170
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2171
    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKView$5;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKView;->access$4(Lcom/mapps/android/view/AdView$SDKView;)Lcom/mapps/android/view/AdView;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2176
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2172
    :catch_0
    move-exception v0

    .line 2173
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKView$5;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKView;->access$4(Lcom/mapps/android/view/AdView$SDKView;)Lcom/mapps/android/view/AdView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mapps/android/view/AdView;->access$44(Lcom/mapps/android/view/AdView;Z)V

    .line 2174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

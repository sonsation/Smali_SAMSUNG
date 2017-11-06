.class Lcom/mapps/android/view/AdView$SDKView$4;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKView;->requestTouch()V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKView$4;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    .line 2131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2136
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/mapps/android/view/AdView$SDKView$4;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView$SDKView;->access$4(Lcom/mapps/android/view/AdView$SDKView;)Lcom/mapps/android/view/AdView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mapps/android/view/AdView;->access$54(Lcom/mapps/android/view/AdView;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2137
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2138
    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKView$4;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKView;->access$4(Lcom/mapps/android/view/AdView$SDKView;)Lcom/mapps/android/view/AdView;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2143
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2139
    :catch_0
    move-exception v0

    .line 2140
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKView$4;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKView;->access$4(Lcom/mapps/android/view/AdView$SDKView;)Lcom/mapps/android/view/AdView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mapps/android/view/AdView;->access$44(Lcom/mapps/android/view/AdView;Z)V

    .line 2141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

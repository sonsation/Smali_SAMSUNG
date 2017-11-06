.class Lcom/mapps/android/view/AdView$SDKView$1$1$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKView$1$1;->call()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/mapps/android/view/AdView$SDKView$1$1;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKView$1$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKView$1$1$1;->this$3:Lcom/mapps/android/view/AdView$SDKView$1$1;

    .line 1952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1956
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://advimg.ad-mapps.com/ad_images/link_mezzo_home.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1957
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1958
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView$1$1$1;->this$3:Lcom/mapps/android/view/AdView$SDKView$1$1;

    invoke-static {v1}, Lcom/mapps/android/view/AdView$SDKView$1$1;->access$1(Lcom/mapps/android/view/AdView$SDKView$1$1;)Lcom/mapps/android/view/AdView$SDKView$1;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/AdView$SDKView$1;->access$0(Lcom/mapps/android/view/AdView$SDKView$1;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/AdView$SDKView;->access$4(Lcom/mapps/android/view/AdView$SDKView;)Lcom/mapps/android/view/AdView;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1959
    return-void
.end method

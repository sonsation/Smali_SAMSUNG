.class Lcom/mapps/android/view/EndingAdView$29$1$1;
.super Ljava/lang/Object;
.source "EndingAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView$29$1;->call()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mapps/android/view/EndingAdView$29$1;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView$29$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$29$1$1;->this$2:Lcom/mapps/android/view/EndingAdView$29$1;

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView$29$1$1;->val$url:Ljava/lang/String;

    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/high16 v5, 0x10000000

    .line 1168
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$29$1$1;->val$url:Ljava/lang/String;

    const-string v2, "intent:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$29$1$1;->val$url:Ljava/lang/String;

    const-string v2, "kakaolink:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$29$1$1;->val$url:Ljava/lang/String;

    const-string v2, "market:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1169
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$29$1$1;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1170
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1171
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$29$1$1;->this$2:Lcom/mapps/android/view/EndingAdView$29$1;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView$29$1;->access$1(Lcom/mapps/android/view/EndingAdView$29$1;)Lcom/mapps/android/view/EndingAdView$29;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView$29;->access$0(Lcom/mapps/android/view/EndingAdView$29;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1175
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1173
    :cond_1
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$29$1$1;->this$2:Lcom/mapps/android/view/EndingAdView$29$1;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView$29$1;->access$1(Lcom/mapps/android/view/EndingAdView$29$1;)Lcom/mapps/android/view/EndingAdView$29;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView$29;->access$0(Lcom/mapps/android/view/EndingAdView$29;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$29$1$1;->val$url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

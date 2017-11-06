.class Lcom/mapps/android/view/AdInterstitialView$8;
.super Ljava/lang/Object;
.source "AdInterstitialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->common(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$8;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$8;->val$context:Landroid/content/Context;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 148
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/mapps/android/view/AdInterstitialView$8;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/mapps/android/share/ShareUtil;->getIsGPS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "locFlag":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    iget-object v5, p0, Lcom/mapps/android/view/AdInterstitialView$8;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v5, v7}, Lcom/mapps/android/view/AdInterstitialView;->access$14(Lcom/mapps/android/view/AdInterstitialView;Z)V

    .line 153
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/mapps/android/view/AdInterstitialView$8;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v5}, Lcom/mapps/android/view/AdInterstitialView;->access$0(Lcom/mapps/android/view/AdInterstitialView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/mapps/android/view/AdInterstitialView$8;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v6}, Lcom/mapps/android/view/AdInterstitialView;->access$0(Lcom/mapps/android/view/AdInterstitialView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 154
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 156
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "DEBUG_MODE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 157
    .local v1, "doj":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    iget-object v5, p0, Lcom/mapps/android/view/AdInterstitialView$8;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/mapps/android/view/AdInterstitialView;->access$15(Lcom/mapps/android/view/AdInterstitialView;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "doj":Ljava/lang/Object;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/mapps/android/view/AdInterstitialView$8;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v5}, Lcom/mapps/android/view/AdInterstitialView;->access$17(Lcom/mapps/android/view/AdInterstitialView;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 172
    return-void

    .line 164
    .restart local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/mapps/android/view/AdInterstitialView$8;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const-string v6, "Fail getPackageInfo "

    invoke-static {v5, v6}, Lcom/mapps/android/view/AdInterstitialView;->access$16(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 167
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/mapps/android/view/AdInterstitialView$8;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Publisher load fail : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mapps/android/view/AdInterstitialView;->access$16(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;)V

    goto :goto_0
.end method

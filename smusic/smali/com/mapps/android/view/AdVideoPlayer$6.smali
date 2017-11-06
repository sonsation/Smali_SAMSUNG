.class Lcom/mapps/android/view/AdVideoPlayer$6;
.super Ljava/lang/Object;
.source "AdVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->common(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$6;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 173
    :try_start_0
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$6;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$6;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 174
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 175
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "DEBUG_MODE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 176
    .local v1, "doj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$6;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$8(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    .line 187
    .end local v1    # "doj":Ljava/lang/Object;
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$6;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mapps/android/share/ShareUtil;->getIsGPS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "locFlag":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$6;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$9(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 196
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "locFlag":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 183
    .restart local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$6;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    const-string v5, "Fail getPackageInfo "

    invoke-static {v5}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$6;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Publisher load fail : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.class Lcom/mapps/android/view/AdView$16;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->common(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$16;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$16;->val$context:Landroid/content/Context;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 234
    :try_start_0
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/mapps/android/view/AdView$16;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/mapps/android/share/ShareUtil;->getIsGPS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "locFlag":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    iget-object v5, p0, Lcom/mapps/android/view/AdView$16;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/mapps/android/view/AdView;->access$58(Lcom/mapps/android/view/AdView;Z)V

    .line 238
    :cond_0
    iget-object v5, p0, Lcom/mapps/android/view/AdView$16;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v6, p0, Lcom/mapps/android/view/AdView$16;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v6}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mapps/android/view/AdView;->access$59(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V

    .line 239
    iget-object v5, p0, Lcom/mapps/android/view/AdView$16;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/mapps/android/view/AdView$16;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v6}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 240
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 241
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "DEBUG_MODE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 242
    .local v1, "doj":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 245
    iget-object v5, p0, Lcom/mapps/android/view/AdView$16;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/mapps/android/view/AdView;->access$60(Lcom/mapps/android/view/AdView;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "doj":Ljava/lang/Object;
    .end local v3    # "locFlag":Ljava/lang/String;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/mapps/android/view/AdView$16;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$61(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 258
    return-void

    .line 249
    .restart local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "locFlag":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/mapps/android/view/AdView$16;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$3(Lcom/mapps/android/view/AdView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 250
    const-string v5, "Fail getPackageInfo "

    invoke-static {v5}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 252
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "locFlag":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/mapps/android/view/AdView$16;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$3(Lcom/mapps/android/view/AdView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 254
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

    goto :goto_0
.end method

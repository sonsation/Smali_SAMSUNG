.class Lcom/mapps/android/view/EndingAdView$8;
.super Ljava/lang/Object;
.source "EndingAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->common(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 151
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v5}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mapps/android/share/ShareUtil;->getIsGPS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "locFlag":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-object v5, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v5}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mapps/android/view/EndingAdView;->access$13(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    .line 154
    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v4}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v5}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 155
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 156
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "DEBUG_MODE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 157
    .local v1, "doj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/mapps/android/view/EndingAdView;->access$14(Lcom/mapps/android/view/EndingAdView;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "doj":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$8;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v4}, Lcom/mapps/android/view/EndingAdView;->access$15(Lcom/mapps/android/view/EndingAdView;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    :cond_1
    return-void

    .line 163
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

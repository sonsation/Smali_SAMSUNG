.class public abstract Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.super Ljava/lang/Object;
.source "DeepLinkTask.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mContext:Landroid/content/Context;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->mActivity:Landroid/app/Activity;

    .line 27
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->mUri:Landroid/net/Uri;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->mUri:Landroid/net/Uri;

    .line 33
    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method protected ignoreMyMusicMode()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isValidTask()Z
.end method

.method public preExecute()V
    .locals 4

    .prologue
    const v3, 0x7f0a030d

    .line 36
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->ignoreMyMusicMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "preExecute - MyMusic mode"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a027d

    .line 40
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a040e

    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;)V

    .line 42
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v0

    .line 49
    .local v0, "dialog":Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 60
    .end local v0    # "dialog":Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "preExecute - activity is null or destroyed"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->execute()V

    goto :goto_0
.end method

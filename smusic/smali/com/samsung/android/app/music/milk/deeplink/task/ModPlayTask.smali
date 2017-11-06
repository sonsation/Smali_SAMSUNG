.class public Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "ModPlayTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ModPlayTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOption:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;

.field private mTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->mContext:Landroid/content/Context;

    .line 29
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->mTarget:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->mTrackId:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->OPTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->mOption:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->mOption:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;)V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->mTrackId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addToCurrentPlaylist(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Z)V

    .line 57
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "ModPlayTask"

    return-object v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->mTrackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

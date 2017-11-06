.class public Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "MainLaunchTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MainLaunchTask"


# instance fields
.field private mStationId:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;

.field private mTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 27
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;->mTarget:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->STATION_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;->mStationId:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;->mTrackId:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;->mTarget:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v10

    .line 41
    .local v10, "targetType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    invoke-virtual {v0, v5, v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->moveToTab(II)V

    .line 43
    if-eqz v10, :cond_1

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask$2;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$TargetType:[I

    invoke-virtual {v10}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 49
    :pswitch_1
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v9, "argument":Landroid/os/Bundle;
    const-string/jumbo v0, "whole"

    invoke-virtual {v9, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-direct {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;-><init>()V

    const-string v3, "RadioResetCustomizeDialDialog"

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->launchDialog(Landroid/app/FragmentManager;Landroid/app/DialogFragment;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 54
    .end local v9    # "argument":Landroid/os/Bundle;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;->mStationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;->mActivity:Landroid/app/Activity;

    .line 56
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;)V

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;->mStationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;->mTrackId:Ljava/lang/String;

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->playStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "MainLaunchTask"

    return-object v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

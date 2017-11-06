.class public Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;
.super Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
.source "MilkWorkerCreateSmartStation.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/MilkConstants$IMilkUIConst;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MilkWorkerCreateSmartStation"


# instance fields
.field protected isFromDeepLink:Z

.field protected mFragMngr:Landroid/app/FragmentManager;

.field private reTryCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p3, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p4, "fragmngr"    # Landroid/app/FragmentManager;
    .param p5, "isDeepLink"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 40
    iput-boolean p5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->isFromDeepLink:Z

    .line 41
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->mFragMngr:Landroid/app/FragmentManager;

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->reTryCount:I

    .line 43
    return-void
.end method

.method private executeCreateSmartStation()V
    .locals 5

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 152
    .local v0, "radioService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "MilkWorkerCreateSmartStation"

    const-string/jumbo v2, "run : RadioService is normal Case"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->showLoadingProgress(Z)V

    .line 155
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->createSmartStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v1, 0x0

    const-string v2, "MilkWorkerCreateSmartStation"

    const-string v3, "NOT_DEFINE"

    const-string v4, "not Initialized"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCreatedStationAndAddtoDB()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 137
    .local v0, "radioService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "MilkWorkerCreateSmartStation"

    const-string v2, "onApiHandled : Try to add created Station to DB"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->showLoadingProgress(Z)V

    .line 140
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addToDBAfterGetCreatedSmartStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->mContext:Landroid/content/Context;

    const v2, 0x7f0a02d8

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 144
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->showLoadingProgress(Z)V

    .line 145
    const-string v1, "MilkWorkerCreateSmartStation"

    const-string v2, "NOT_DEFINE"

    const-string/jumbo v3, "response is not available"

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "MilkWorkerCreateSmartStation"

    return-object v0
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 9
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const v8, 0x7f0a02d8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->showLoadingProgress(Z)V

    .line 60
    const/16 v3, 0xe1

    if-ne p2, v3, :cond_9

    .line 61
    if-nez p3, :cond_2

    .line 62
    if-eqz p4, :cond_1

    instance-of v3, p4, Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v3, :cond_1

    move-object v2, p4

    .line 63
    check-cast v2, Lcom/samsung/android/app/music/common/model/Station;

    .line 64
    .local v2, "smart_station":Lcom/samsung/android/app/music/common/model/Station;
    const/4 v1, 0x0

    .line 65
    .local v1, "imageUrl":Ljava/lang/String;
    iget-object v3, v2, Lcom/samsung/android/app/music/common/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v3, :cond_0

    .line 66
    iget-object v3, v2, Lcom/samsung/android/app/music/common/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Track;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 68
    :cond_0
    const-string v3, "MilkWorkerCreateSmartStation"

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v7, v3, v4, v1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v1    # "imageUrl":Ljava/lang/String;
    .end local v2    # "smart_station":Lcom/samsung/android/app/music/common/model/Station;
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v3, "MilkWorkerCreateSmartStation"

    const-string v4, "NOT_DEFINE"

    const-string/jumbo v5, "response is not available"

    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    const/4 v3, 0x3

    if-ne v3, p3, :cond_4

    .line 74
    iget v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->reTryCount:I

    if-lez v3, :cond_3

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->executeCreateSmartStation()V

    .line 76
    iget v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->reTryCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->reTryCount:I

    goto :goto_0

    .line 78
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v7}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 80
    const-string v3, "MilkWorkerCreateSmartStation"

    const-string v4, "ServerErrorType"

    const-string v5, "Server Error"

    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_4
    aget-object v0, p5, v6

    check-cast v0, Ljava/lang/Integer;

    .line 85
    .local v0, "errorCode":Ljava/lang/Integer;
    const-string v3, "MilkWorkerCreateSmartStation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled : ErrorCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz v0, :cond_8

    .line 87
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x1007

    if-ne v3, v4, :cond_5

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->getCreatedStationAndAddtoDB()V

    goto :goto_0

    .line 89
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x1005

    if-ne v3, v4, :cond_6

    .line 90
    const-string v3, "MilkWorkerCreateSmartStation"

    const-string v4, "ServerErrorType"

    .line 91
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc1c

    if-ne v3, v4, :cond_7

    .line 94
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->mContext:Landroid/content/Context;

    const v4, 0x7f0a038a

    invoke-static {v3, v4, v7}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 99
    :cond_7
    const-string v3, "MilkWorkerCreateSmartStation"

    const-string v4, "ServerErrorType"

    const-string v5, "Server Error"

    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v7}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 105
    const-string v3, "MilkWorkerCreateSmartStation"

    const-string v4, "ServerErrorType"

    const-string v5, "Server Error"

    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    .end local v0    # "errorCode":Ljava/lang/Integer;
    :cond_9
    const/16 v3, 0xe3

    if-ne p2, v3, :cond_c

    .line 110
    if-nez p3, :cond_b

    .line 111
    if-eqz p4, :cond_a

    instance-of v3, p4, Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v3, :cond_a

    move-object v2, p4

    .line 112
    check-cast v2, Lcom/samsung/android/app/music/common/model/Station;

    .line 113
    .restart local v2    # "smart_station":Lcom/samsung/android/app/music/common/model/Station;
    const-string v3, "MilkWorkerCreateSmartStation"

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v7, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    .end local v2    # "smart_station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v7}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 117
    const-string v3, "MilkWorkerCreateSmartStation"

    const-string v4, "NOT_DEFINE"

    const-string/jumbo v5, "response is not available"

    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_b
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v7}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 123
    const-string v3, "MilkWorkerCreateSmartStation"

    const-string v4, "ServerErrorType"

    const-string v5, "Server Error"

    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :cond_c
    const-string v3, "MilkWorkerCreateSmartStation"

    const-string v4, "onApiHandled : Wrong Request"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v7}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 130
    const-string v3, "MilkWorkerCreateSmartStation"

    const-string v4, "NOT_DEFINE"

    const-string v5, "Parameter Error"

    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;->executeCreateSmartStation()V

    .line 53
    return-void
.end method

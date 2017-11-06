.class public Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "RecommendPlayTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mTarget:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->mTarget:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method protected createSmartStationController(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;)Lcom/samsung/android/app/music/milk/radio/SmartStationController;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;

    .prologue
    .line 51
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->newInstance(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;)Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 4

    .prologue
    .line 30
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->mTarget:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v0

    .line 32
    .local v0, "targetType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 36
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute - target : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$2;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$TargetType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->createSmartStationController(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;)Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->createSmartStation()V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->mTarget:Ljava/lang/String;

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

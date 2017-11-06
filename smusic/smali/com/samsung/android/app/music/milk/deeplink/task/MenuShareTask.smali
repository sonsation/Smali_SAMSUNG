.class public Lcom/samsung/android/app/music/milk/deeplink/task/MenuShareTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "MenuShareTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mPageUrl:Ljava/lang/String;

.field private mThumbnailUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuShareTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuShareTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->LINK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuShareTask;->mPageUrl:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->IMAGE_URL:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuShareTask;->mThumbnailUrl:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->MESSAGE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuShareTask;->mDescription:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 35
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuShareTask;->mDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuShareTask;->mThumbnailUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuShareTask;->mPageUrl:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/share/ShareItem;

    move-result-object v0

    .line 36
    .local v0, "item":Lcom/samsung/android/app/music/common/model/share/ShareItem;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuShareTask;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->shareEvent(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/share/ShareItem;)V

    .line 37
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuShareTask;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuShareTask;->mPageUrl:Ljava/lang/String;

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

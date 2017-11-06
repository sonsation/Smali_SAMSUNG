.class public Lcom/mapps/android/view/AdPlayerInterface;
.super Landroid/view/View;
.source "AdPlayerInterface.java"

# interfaces
.implements Lcom/mapps/android/share/InterBannerKey;


# instance fields
.field private a_media:Ljava/lang/String;

.field private a_publisher:Ljava/lang/String;

.field private a_section:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private mAdListener:Lcom/mapps/android/listner/AdPlayListener;

.field private mAppID:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field private mImps_api:Ljava/lang/String;

.field private mVideoURI:Ljava/lang/String;

.field private mWindowID:Ljava/lang/String;

.field private m_Cate:Ljava/lang/String;

.field private m_Cate_content:Ljava/lang/String;

.field private m_complete_api:Lcom/mezzo/common/network/data/DataTracking;

.field private m_firstq_api:Lcom/mezzo/common/network/data/DataTracking;

.field private m_midq_api:Lcom/mezzo/common/network/data/DataTracking;

.field private m_start_api:Lcom/mezzo/common/network/data/DataTracking;

.field private m_thirdq_api:Lcom/mezzo/common/network/data/DataTracking;

.field private movieConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

.field private nt:Lcom/mezzo/common/network/Nt;

.field private progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->handler:Landroid/os/Handler;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->mWindowID:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->mAppID:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->mVideoURI:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->mImps_api:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->a_publisher:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->a_media:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->a_section:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_Cate:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_Cate_content:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/mapps/android/view/AdPlayerInterface;->mAdListener:Lcom/mapps/android/listner/AdPlayListener;

    .line 47
    iput-object v1, p0, Lcom/mapps/android/view/AdPlayerInterface;->nt:Lcom/mezzo/common/network/Nt;

    .line 136
    new-instance v0, Lcom/mapps/android/view/AdPlayerInterface$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdPlayerInterface$1;-><init>(Lcom/mapps/android/view/AdPlayerInterface;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    .line 151
    new-instance v0, Lcom/mapps/android/view/AdPlayerInterface$2;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdPlayerInterface$2;-><init>(Lcom/mapps/android/view/AdPlayerInterface;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->movieConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    .line 59
    iput-object p1, p0, Lcom/mapps/android/view/AdPlayerInterface;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private SendRequestVideoInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "winID"    # Ljava/lang/String;

    .prologue
    .line 198
    :try_start_0
    new-instance v0, Lcom/mezzo/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdPlayerInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->nt:Lcom/mezzo/common/network/Nt;

    .line 199
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->nt:Lcom/mezzo/common/network/Nt;

    iget-object v1, p0, Lcom/mapps/android/view/AdPlayerInterface;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 200
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdPlayerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mapps/android/network/UrlManager;->urlVideo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/mapps/android/network/ParamManager;

    iget-object v1, p0, Lcom/mapps/android/view/AdPlayerInterface;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mapps/android/network/ParamManager;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_Cate_content:Ljava/lang/String;

    iget-object v4, p0, Lcom/mapps/android/view/AdPlayerInterface;->a_publisher:Ljava/lang/String;

    iget-object v5, p0, Lcom/mapps/android/view/AdPlayerInterface;->a_media:Ljava/lang/String;

    iget-object v6, p0, Lcom/mapps/android/view/AdPlayerInterface;->a_section:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/mapps/android/network/ParamManager;->getParamPlayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, "url":Ljava/lang/String;
    new-instance v8, Lcom/mezzo/common/network/request/RequestMovie;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdPlayerInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v8, v0, v9, v1}, Lcom/mezzo/common/network/request/RequestMovie;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 202
    .local v8, "requestMovie":Lcom/mezzo/common/network/request/RequestMovie;
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->movieConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    invoke-virtual {v8, v0}, Lcom/mezzo/common/network/request/RequestMovie;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 203
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mezzo/common/network/request/RequestNTCommon;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v8    # "requestMovie":Lcom/mezzo/common/network/request/RequestMovie;
    .end local v9    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v7

    .line 205
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdPlayerInterface;->onResponseVideoURI(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdPlayerInterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdPlayerInterface;->onResponseVideoURI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/mapps/android/view/AdPlayerInterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/mapps/android/view/AdPlayerInterface;->mVideoURI:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/mapps/android/view/AdPlayerInterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mapps/android/view/AdPlayerInterface;->mImps_api:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/mapps/android/view/AdPlayerInterface;Lcom/mezzo/common/network/data/DataTracking;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_start_api:Lcom/mezzo/common/network/data/DataTracking;

    return-void
.end method

.method static synthetic access$4(Lcom/mapps/android/view/AdPlayerInterface;Lcom/mezzo/common/network/data/DataTracking;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_firstq_api:Lcom/mezzo/common/network/data/DataTracking;

    return-void
.end method

.method static synthetic access$5(Lcom/mapps/android/view/AdPlayerInterface;Lcom/mezzo/common/network/data/DataTracking;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_midq_api:Lcom/mezzo/common/network/data/DataTracking;

    return-void
.end method

.method static synthetic access$6(Lcom/mapps/android/view/AdPlayerInterface;Lcom/mezzo/common/network/data/DataTracking;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_thirdq_api:Lcom/mezzo/common/network/data/DataTracking;

    return-void
.end method

.method static synthetic access$7(Lcom/mapps/android/view/AdPlayerInterface;Lcom/mezzo/common/network/data/DataTracking;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_complete_api:Lcom/mezzo/common/network/data/DataTracking;

    return-void
.end method

.method static synthetic access$8(Lcom/mapps/android/view/AdPlayerInterface;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/mapps/android/view/AdPlayerInterface;->requestVideoURI()V

    return-void
.end method

.method static synthetic access$9(Lcom/mapps/android/view/AdPlayerInterface;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->mVideoURI:Ljava/lang/String;

    return-object v0
.end method

.method private onResponseVideoURI(Ljava/lang/String;)V
    .locals 2
    .param p1, "videoURI"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->mAdListener:Lcom/mapps/android/listner/AdPlayListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->mAdListener:Lcom/mapps/android/listner/AdPlayListener;

    invoke-interface {v0, p0, p1}, Lcom/mapps/android/listner/AdPlayListener;->onResponseVideoURI(Landroid/view/View;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v0, "ADSDK"

    const-string v1, "mAdListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestVideoURI()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->mVideoURI:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->mVideoURI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/view/AdPlayerInterface$3;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdPlayerInterface$3;-><init>(Lcom/mapps/android/view/AdPlayerInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdPlayerInterface;->onResponseVideoURI(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public SendRequestAd_Server(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "strURL"    # Ljava/lang/String;
    .param p2, "bparam"    # Z

    .prologue
    const/4 v5, 0x0

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v2

    iget-object v4, p0, Lcom/mapps/android/view/AdPlayerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/mapps/android/share/ShareUtil;->getAdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendapi "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 225
    new-instance v0, Lcom/mezzo/common/network/request/RequestSimple;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdPlayerInterface;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/mezzo/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 226
    .local v0, "request":Lcom/mezzo/common/network/request/RequestSimple;
    new-instance v2, Lcom/mapps/android/view/AdPlayerInterface$4;

    invoke-direct {v2, p0, p1}, Lcom/mapps/android/view/AdPlayerInterface$4;-><init>(Lcom/mapps/android/view/AdPlayerInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/mezzo/common/network/request/RequestSimple;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 243
    new-instance v2, Lcom/mezzo/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdPlayerInterface;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v2, p0, Lcom/mapps/android/view/AdPlayerInterface;->nt:Lcom/mezzo/common/network/Nt;

    .line 244
    iget-object v2, p0, Lcom/mapps/android/view/AdPlayerInterface;->nt:Lcom/mezzo/common/network/Nt;

    iget-object v3, p0, Lcom/mapps/android/view/AdPlayerInterface;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 245
    iget-object v2, p0, Lcom/mapps/android/view/AdPlayerInterface;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/mezzo/common/network/request/RequestNTCommon;

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 246
    return-void

    .line 223
    .end local v0    # "request":Lcom/mezzo/common/network/request/RequestSimple;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public end_chromecast()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_complete_api:Lcom/mezzo/common/network/data/DataTracking;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_complete_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_complete_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/AdPlayerInterface;->SendRequestAd_Server(Ljava/lang/String;Z)V

    .line 120
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_complete_api:Lcom/mezzo/common/network/data/DataTracking;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/data/DataTracking;->setSend(Z)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_complete_api:Lcom/mezzo/common/network/data/DataTracking;

    .line 123
    :cond_0
    return-void
.end method

.method public first_chromecast()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 94
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_firstq_api:Lcom/mezzo/common/network/data/DataTracking;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_firstq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_firstq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/AdPlayerInterface;->SendRequestAd_Server(Ljava/lang/String;Z)V

    .line 96
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_firstq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/data/DataTracking;->setSend(Z)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_firstq_api:Lcom/mezzo/common/network/data/DataTracking;

    .line 99
    :cond_0
    return-void
.end method

.method public initalize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "windowID"    # Ljava/lang/String;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    iput-object p2, p0, Lcom/mapps/android/view/AdPlayerInterface;->mWindowID:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/mapps/android/view/AdPlayerInterface;->mAppID:Ljava/lang/String;

    .line 67
    :cond_0
    return-void
.end method

.method public mid_chromecast()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 102
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_midq_api:Lcom/mezzo/common/network/data/DataTracking;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_midq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_midq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/AdPlayerInterface;->SendRequestAd_Server(Ljava/lang/String;Z)V

    .line 104
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_midq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/data/DataTracking;->setSend(Z)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_midq_api:Lcom/mezzo/common/network/data/DataTracking;

    .line 107
    :cond_0
    return-void
.end method

.method public setAdPlayListener(Lcom/mapps/android/listner/AdPlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mapps/android/listner/AdPlayListener;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iput-object p1, p0, Lcom/mapps/android/view/AdPlayerInterface;->mAdListener:Lcom/mapps/android/listner/AdPlayListener;

    .line 129
    :cond_0
    return-void
.end method

.method public setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "publisher"    # Ljava/lang/String;
    .param p2, "media"    # Ljava/lang/String;
    .param p3, "section"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mapps/android/view/AdPlayerInterface;->a_publisher:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/mapps/android/view/AdPlayerInterface;->a_media:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/mapps/android/view/AdPlayerInterface;->a_section:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdPlayerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mapps/android/share/ShareUtil;->getAdvertisingId(Landroid/content/Context;)V

    .line 74
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mezzo/common/MZUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->mAppID:Ljava/lang/String;

    iget-object v1, p0, Lcom/mapps/android/view/AdPlayerInterface;->mWindowID:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mapps/android/view/AdPlayerInterface;->SendRequestVideoInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdPlayerInterface;->onResponseVideoURI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCateContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cate"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_Cate:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_Cate_content:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public start_chromecast()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 82
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->mImps_api:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->mImps_api:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->mImps_api:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/AdPlayerInterface;->SendRequestAd_Server(Ljava/lang/String;Z)V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->mImps_api:Ljava/lang/String;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_start_api:Lcom/mezzo/common/network/data/DataTracking;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_start_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_start_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/mapps/android/view/AdPlayerInterface;->SendRequestAd_Server(Ljava/lang/String;Z)V

    .line 88
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_start_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0, v2}, Lcom/mezzo/common/network/data/DataTracking;->setSend(Z)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_start_api:Lcom/mezzo/common/network/data/DataTracking;

    .line 91
    :cond_1
    return-void
.end method

.method public third_chromecast()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 110
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_thirdq_api:Lcom/mezzo/common/network/data/DataTracking;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_thirdq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_thirdq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/AdPlayerInterface;->SendRequestAd_Server(Ljava/lang/String;Z)V

    .line 112
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_thirdq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/data/DataTracking;->setSend(Z)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface;->m_thirdq_api:Lcom/mezzo/common/network/data/DataTracking;

    .line 115
    :cond_0
    return-void
.end method

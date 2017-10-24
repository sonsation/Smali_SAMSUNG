.class public Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;
.super Ljava/lang/Object;
.source "LanguagePack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;,
        Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;,
        Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$ListenerHandler;,
        Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$OnDownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final HANDLE_DOWNLOAD_CANCEL:I

.field private mCurrentDownloadProgress:I

.field private mDeleteProgress:I

.field private mDownloadInProgress:Z

.field private mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

.field private mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

.field private mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

.field private mDownloadProgress:I

.field private mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

.field private mLanguagePacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHandler:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$ListenerHandler;

.field private mServiceId:I

.field private mTriggerLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .locals 1
    .param p1, "lp"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;
    .param p2, "lpi"    # Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    .prologue
    .line 100
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;-><init>(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V

    .line 101
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    iget v0, p1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mTriggerLocation:I

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mTriggerLocation:I

    .line 103
    iget-object v0, p1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .locals 4
    .param p1, "lp"    # Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    .line 24
    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    .line 25
    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    .line 28
    iput v2, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadProgress:I

    .line 29
    iput v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mCurrentDownloadProgress:I

    .line 30
    iput v2, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDeleteProgress:I

    .line 31
    iput v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mServiceId:I

    .line 32
    iput v2, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mTriggerLocation:I

    .line 33
    iput-boolean v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadInProgress:Z

    const/16 v0, 0x3e9

    .line 64
    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->HANDLE_DOWNLOAD_CANCEL:I

    .line 79
    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$ListenerHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$ListenerHandler;-><init>(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mListenerHandler:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$ListenerHandler;

    .line 496
    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-interface {p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mServiceId:I

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;
    .param p1, "x1"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;
    .param p1, "x1"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    .prologue
    .line 20
    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadProgress:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadProgress:I

    return p1
.end method

.method static synthetic access$208(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    .prologue
    .line 20
    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadProgress:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    .prologue
    .line 20
    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mCurrentDownloadProgress:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mCurrentDownloadProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    .prologue
    .line 20
    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mServiceId:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;IZZII)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->createNotification(IZZII)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadInProgress:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadInProgress:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;IZI)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->createNotificationForNegative(IZI)V

    return-void
.end method

.method private createNotification(IZZII)V
    .locals 6
    .param p1, "serviceId"    # I
    .param p2, "update"    # Z
    .param p3, "onGoing"    # Z
    .param p4, "maximum"    # I
    .param p5, "current"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;->access$1600(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;IZZII)V

    .line 529
    return-void

    .line 527
    :cond_0
    return-void
.end method

.method private createNotificationForNegative(IZI)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "update"    # Z
    .param p3, "status"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;->access$1700(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;IZI)V

    .line 535
    return-void

    .line 533
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .locals 1
    .param p1, "lp"    # Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public download()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadInProgress:Z

    .line 275
    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadProgress:I

    .line 276
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadProgress:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->download(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V

    .line 277
    return-void
.end method

.method public isDownloadInProgress()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    iget-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadInProgress:Z

    if-nez v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 176
    return v3

    .line 170
    :cond_1
    return v4

    .line 171
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    .line 172
    .local v0, "lp":Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;
    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->isDownloadInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    return v4
.end method

.method public setLanguagePackManager(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)V
    .locals 0
    .param p1, "lpm"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    .line 580
    return-void
.end method

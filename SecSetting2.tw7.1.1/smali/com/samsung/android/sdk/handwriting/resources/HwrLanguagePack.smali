.class public Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
.super Ljava/lang/Object;
.source "HwrLanguagePack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;,
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;,
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$ListenerHandler;,
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final HANDLE_DOWNLOAD_CANCEL:I

.field private mCurrentDownloadProgress:I

.field private mDeleteProgress:I

.field private mDownloadInProgress:Z

.field private mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

.field private mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

.field private mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

.field private mDownloadProgress:I

.field private mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

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

.field private mListenerHandler:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$ListenerHandler;

.field private mServiceId:I

.field private mTriggerLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .locals 1
    .param p1, "lp"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
    .param p2, "lpi"    # Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    .prologue
    .line 103
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;-><init>(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V

    .line 104
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    iget v0, p1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mTriggerLocation:I

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mTriggerLocation:I

    .line 106
    iget-object v0, p1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .locals 4
    .param p1, "lp"    # Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    .line 27
    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    .line 28
    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    .line 31
    iput v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I

    .line 32
    iput v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCurrentDownloadProgress:I

    .line 33
    iput v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDeleteProgress:I

    .line 34
    iput v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mServiceId:I

    .line 35
    iput v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mTriggerLocation:I

    .line 36
    iput-boolean v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgress:Z

    const/16 v0, 0x3e9

    .line 67
    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->HANDLE_DOWNLOAD_CANCEL:I

    .line 82
    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$ListenerHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$ListenerHandler;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mListenerHandler:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$ListenerHandler;

    .line 504
    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    .line 93
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mServiceId:I

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
    .param p1, "x1"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
    .param p1, "x1"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    .prologue
    .line 23
    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I

    return p1
.end method

.method static synthetic access$208(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    .prologue
    .line 23
    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    .prologue
    .line 23
    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCurrentDownloadProgress:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCurrentDownloadProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    .prologue
    .line 23
    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mServiceId:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;IZZII)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->createNotification(IZZII)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgress:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgress:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;IZI)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->createNotificationForNegative(IZI)V

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
    .line 534
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->access$1600(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;IZZII)V

    .line 537
    return-void

    .line 535
    :cond_0
    return-void
.end method

.method private createNotificationForNegative(IZI)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "update"    # Z
    .param p3, "status"    # I

    .prologue
    .line 540
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->access$1700(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;IZI)V

    .line 543
    return-void

    .line 541
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .locals 1
    .param p1, "lp"    # Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public download()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgress:Z

    .line 282
    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I

    .line 283
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->download(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V

    .line 284
    return-void
.end method

.method public isDownloadInProgress()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    iget-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgress:Z

    if-nez v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 179
    return v3

    .line 173
    :cond_1
    return v4

    .line 174
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    .line 175
    .local v0, "lp":Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;
    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->isDownloadInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    return v4
.end method

.method public setSpenLanguagePackManager(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)V
    .locals 0
    .param p1, "lpm"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    .line 588
    return-void
.end method

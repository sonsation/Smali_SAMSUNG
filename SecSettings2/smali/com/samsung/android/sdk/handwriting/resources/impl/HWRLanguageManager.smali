.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;
.super Ljava/lang/Object;
.source "HWRLanguageManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDownloadableLanguage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledLanguage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

.field private mLanguagePack:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mInstalledLanguage:Ljava/util/HashMap;

    .line 23
    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mDownloadableLanguage:Ljava/util/HashMap;

    .line 25
    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->initialize()V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mInstalledLanguage:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mInstalledLanguage:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mDownloadableLanguage:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mDownloadableLanguage:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableLanguage()[Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 115
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->registerReceiver()V

    .line 31
    return-void
.end method

.method public update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V
    .locals 3
    .param p1, "l"    # Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;
    .param p2, "refresh"    # Z

    .prologue
    .line 70
    move-object v0, p1

    .line 71
    .local v0, "listener":Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;
    if-nez p2, :cond_0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    new-instance v2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateLanguageManager(Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;)V

    .line 106
    return-void

    .line 72
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "update() : download the latest resource list from server!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateResourceListFromServer()V

    goto :goto_0
.end method

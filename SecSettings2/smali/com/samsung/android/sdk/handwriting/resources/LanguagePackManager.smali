.class public Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;
.super Ljava/lang/Object;
.source "LanguagePackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

.field private static mLanguageManagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static mServerConnection:Z


# instance fields
.field private mDownloadQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageListNew:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;

.field private mUpdateProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mServerConnection:Z

    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mInstance:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/handwriting/Recognizer;)V
    .locals 3
    .param p1, "recognizer"    # Lcom/samsung/android/sdk/handwriting/Recognizer;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mUpdateProgress:I

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageList:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageListNew:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mDownloadQ:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;-><init>(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mUpdateListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isSDLAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isSDKAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Language manager is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Lcom/samsung/android/sdk/handwriting/UninitializedException;

    const-string/jumbo v1, "Language manager is not available"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/handwriting/UninitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/handwriting/UninitializedException;

    const-string/jumbo v1, "Recognizer SDK for Text Recognizer has not been initialized"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/handwriting/UninitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/Recognizer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Framework language manager appended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/Recognizer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sdk language manager appended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageListNew:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    .prologue
    .line 18
    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mUpdateProgress:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mUpdateProgress:I

    return p1
.end method

.method static synthetic access$208(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    .prologue
    .line 18
    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mUpdateProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mUpdateProgress:I

    return v0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageList:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$500()Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mInstance:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mServerConnection:Z

    return v0
.end method

.method public static getInstance(Lcom/samsung/android/sdk/handwriting/Recognizer;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;
    .locals 3
    .param p0, "recognizer"    # Lcom/samsung/android/sdk/handwriting/Recognizer;

    .prologue
    .line 36
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mInstance:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    :goto_1
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mInstance:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    return-object v1

    .line 37
    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;-><init>(Lcom/samsung/android/sdk/handwriting/Recognizer;)V

    sput-object v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mInstance:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    .line 41
    .local v0, "lm":Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;
    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->initialize()V

    goto :goto_0
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mDownloadQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cancel Download: Queue size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mDownloadQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method public finishDownload(Ljava/lang/String;)V
    .locals 4
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 255
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Finish Download: Queue size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mDownloadQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mDownloadQ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 257
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mDownloadQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 262
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mDownloadQ:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    .local v0, "next":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Download language: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->download()V

    goto :goto_0
.end method

.method public getAvailableLanguage()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 236
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 237
    .local v0, "availableLanguage":[Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "available language = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-object v0
.end method

.method public update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V
    .locals 5
    .param p1, "l"    # Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;
    .param p2, "refresh"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    sput-boolean p2, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mServerConnection:Z

    .line 208
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mUpdateListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->addListener(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;)V

    .line 222
    iget v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mUpdateProgress:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 226
    iput v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mUpdateProgress:I

    .line 227
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageListNew:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 228
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mUpdateProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v4, :cond_4

    .line 232
    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mUpdateProgress:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mUpdateListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;

    sget-boolean v3, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mServerConnection:Z

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V

    .line 233
    return-void

    .line 209
    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No language manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-interface {p1, v4}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    .line 211
    return-void

    .line 214
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    .line 215
    .local v0, "lp":Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->isDownloadInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Language downloading... "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-interface {p1, v3}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    .line 218
    return-void

    .line 223
    .end local v0    # "lp":Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;
    :cond_3
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Updating..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 230
    :cond_4
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update language list progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->mUpdateProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

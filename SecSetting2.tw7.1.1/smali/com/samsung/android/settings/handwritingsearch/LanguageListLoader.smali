.class public Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;
.super Ljava/lang/Object;
.source "LanguageListLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLanguageList:[Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->mLanguageList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->mLanguageList:[Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->mLanguageList:[Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.feature.spen_usp"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    .line 22
    .local v2, "uspLevel":I
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 23
    sget-object v3, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "receiver)pen is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/Recognizer;->initialize(Landroid/content/Context;)V

    .line 29
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isSDKAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 30
    sget-object v3, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "settings)not supported sdk"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/handwriting/UninitializedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lcom/samsung/android/sdk/handwriting/UninitializedException;
    sget-object v3, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "settings)UninitializedException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 37
    .end local v0    # "e":Lcom/samsung/android/sdk/handwriting/UninitializedException;
    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, "mLanguageManager":Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;
    new-instance v3, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader$1;-><init>(Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->update(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getSupportedLanguageList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settings)getSupportedLanguageList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->mLanguageList:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->mLanguageList:[Ljava/lang/String;

    return-object v0
.end method

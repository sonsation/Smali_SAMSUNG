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
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->mLanguageList:[Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v4

    .line 22
    .local v4, "uspLevel":I
    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 23
    sget-object v5, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "receiver)pen is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void

    .line 26
    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/handwriting/Recognizer;

    invoke-direct {v3}, Lcom/samsung/android/sdk/handwriting/Recognizer;-><init>()V

    .line 28
    .local v3, "recognizer":Lcom/samsung/android/sdk/handwriting/Recognizer;
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/samsung/android/sdk/handwriting/Recognizer;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isSDKAvailable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 43
    sget-object v5, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "settings)not supported sdk"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/android/sdk/handwriting/UninitializedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 33
    :pswitch_0
    sget-object v5, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "settings)vender or version is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :pswitch_1
    sget-object v5, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "settings)sdk is wrong"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    .end local v0    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    :catch_1
    move-exception v1

    .line 47
    .local v1, "e":Lcom/samsung/android/sdk/handwriting/UninitializedException;
    sget-object v5, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "settings)UninitializedException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 50
    .end local v1    # "e":Lcom/samsung/android/sdk/handwriting/UninitializedException;
    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;-><init>(Lcom/samsung/android/sdk/handwriting/Recognizer;)V

    .line 51
    .local v2, "mLanguageManager":Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;
    new-instance v5, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader$1;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader$1;-><init>(Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->update(Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;)V

    .line 20
    return-void

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getSupportedLanguageList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
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

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->mLanguageList:[Ljava/lang/String;

    return-object v0
.end method

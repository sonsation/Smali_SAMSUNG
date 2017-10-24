.class public Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;
.super Ljava/lang/Object;
.source "LanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;
    }
.end annotation


# instance fields
.field private mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/Recognizer;)V
    .locals 2
    .param p1, "recognizer"    # Lcom/samsung/android/sdk/handwriting/Recognizer;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->isExternalStorageWritable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/handwriting/UninitializedException;

    const-string/jumbo v1, "Cannot read and write external storage"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/handwriting/UninitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/handwriting/UninitializedException;

    const-string/jumbo v1, "Recognizer SDK for Text Recognizer has not been initialized"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/handwriting/UninitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->isExternalStorageReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->getInstance(Lcom/samsung/android/sdk/handwriting/Recognizer;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    .line 44
    return-void
.end method

.method private isExternalStorageReadable()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const-string/jumbo v1, "mounted_ro"

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    return v2
.end method

.method private isExternalStorageWritable()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    return v2

    .line 131
    :cond_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public getAvailableLanguage()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->getAvailableLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->update(Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;Z)V

    .line 105
    return-void
.end method

.method public update(Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;Z)V
    .locals 3
    .param p1, "l"    # Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;
    .param p2, "refresh"    # Z

    .prologue
    .line 89
    move-object v0, p1

    .line 90
    .local v0, "listener":Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    new-instance v2, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$1;-><init>(Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;)V

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V

    .line 97
    return-void
.end method

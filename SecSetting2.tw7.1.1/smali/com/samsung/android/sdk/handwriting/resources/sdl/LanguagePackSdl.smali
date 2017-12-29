.class public Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;
.super Ljava/lang/Object;
.source "LanguagePackSdl.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;


# instance fields
.field private mLanguagePack:Lcom/samsung/android/handwriting/resources/SemLanguagePack;


# direct methods
.method public constructor <init>(Lcom/samsung/android/handwriting/resources/SemLanguagePack;)V
    .locals 1
    .param p1, "languagePack"    # Lcom/samsung/android/handwriting/resources/SemLanguagePack;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;->mLanguagePack:Lcom/samsung/android/handwriting/resources/SemLanguagePack;

    .line 13
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;->mLanguagePack:Lcom/samsung/android/handwriting/resources/SemLanguagePack;

    .line 14
    return-void
.end method


# virtual methods
.method public download(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V
    .locals 3
    .param p1, "l"    # Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    .prologue
    .line 17
    move-object v0, p1

    .line 18
    .local v0, "listener":Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;->mLanguagePack:Lcom/samsung/android/handwriting/resources/SemLanguagePack;

    new-instance v2, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl$1;-><init>(Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/handwriting/resources/SemLanguagePack;->download(Lcom/samsung/android/handwriting/resources/SemLanguagePack$OnDownloadListener;)V

    .line 31
    return-void
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;->mLanguagePack:Lcom/samsung/android/handwriting/resources/SemLanguagePack;

    invoke-virtual {v0}, Lcom/samsung/android/handwriting/resources/SemLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDownloadInProgress()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguagePackSdl;->mLanguagePack:Lcom/samsung/android/handwriting/resources/SemLanguagePack;

    invoke-virtual {v0}, Lcom/samsung/android/handwriting/resources/SemLanguagePack;->isDownloadInProgress()Z

    move-result v0

    return v0
.end method

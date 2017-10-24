.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;
.super Ljava/lang/Object;
.source "HWRRMLanguageModel.java"


# instance fields
.field private mLatest:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPreloaded:Ljava/lang/String;

.field private mVersion:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;
    .param p3, "preloaded"    # Ljava/lang/String;
    .param p4, "latest"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->mName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->mVersion:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    .line 70
    iput-object p3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->mPreloaded:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->mLatest:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public isLatest()Z
    .locals 2

    .prologue
    const-string/jumbo v0, "true"

    .line 107
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->mLatest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPreloaded()Z
    .locals 2

    .prologue
    const-string/jumbo v0, "true"

    .line 98
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->mPreloaded:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

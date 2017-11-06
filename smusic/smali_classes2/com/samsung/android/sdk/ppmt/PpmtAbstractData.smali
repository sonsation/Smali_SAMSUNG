.class abstract Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;
.super Ljava/lang/Object;
.source "PpmtAbstractData.java"


# static fields
.field protected static final FIELD_DELIMITER:Ljava/lang/String; = "\u00b6"

.field protected static final KEY_DELIMITER:Ljava/lang/String; = "\u2980"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isValidBoundary(Ljava/lang/String;)Z
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    const-string/jumbo v2, "\u00b6"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 25
    :goto_0
    return-object v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "newText":Ljava/lang/String;
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 25
    goto :goto_0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public send(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/Ppmt;->getTncAgreement(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    sget-object v1, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->TAG:Ljava/lang/String;

    const-string v2, "cannot send data. Terms and Conditions are not agreed yet"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local p0    # "this":Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;
    :cond_1
    :goto_0
    return-void

    .line 48
    .restart local p0    # "this":Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 49
    .local v0, "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getAID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    sget-object v1, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->TAG:Ljava/lang/String;

    const-string v2, "cannot send data. appid is null"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    sget-object v1, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->TAG:Ljava/lang/String;

    const-string v2, "cannot send data. push token is null"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    sget-object v1, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->TAG:Ljava/lang/String;

    const-string v2, "cannot send data. push type is null"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_5
    instance-of v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation;

    if-eqz v1, :cond_6

    .line 63
    check-cast p0, Lcom/samsung/android/sdk/ppmt/PpmtLocation;

    .end local p0    # "this":Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;
    invoke-static {p1, p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->save(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/PpmtLocation;)V

    goto :goto_0

    .line 64
    .restart local p0    # "this":Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;
    :cond_6
    instance-of v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtIap;

    if-eqz v1, :cond_1

    .line 65
    check-cast p0, Lcom/samsung/android/sdk/ppmt/PpmtIap;

    .end local p0    # "this":Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;
    invoke-static {p1, p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->save(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/PpmtIap;)V

    goto :goto_0
.end method

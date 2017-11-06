.class public Lcom/mezzo/common/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field private static instance:Lcom/mezzo/common/CommonUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/mezzo/common/CommonUtils;->instance:Lcom/mezzo/common/CommonUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mezzo/common/CommonUtils;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/mezzo/common/CommonUtils;->instance:Lcom/mezzo/common/CommonUtils;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/mezzo/common/CommonUtils;

    invoke-direct {v0}, Lcom/mezzo/common/CommonUtils;-><init>()V

    sput-object v0, Lcom/mezzo/common/CommonUtils;->instance:Lcom/mezzo/common/CommonUtils;

    .line 16
    :cond_0
    sget-object v0, Lcom/mezzo/common/CommonUtils;->instance:Lcom/mezzo/common/CommonUtils;

    return-object v0
.end method


# virtual methods
.method public check(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "mz.txt"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 27
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 28
    .local v3, "size":I
    new-array v0, v3, [B

    .line 29
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 30
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    const/4 v4, 0x1

    .line 33
    .end local v0    # "buffer":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "size":I
    :goto_0
    return v4

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getUUIDKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 21
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

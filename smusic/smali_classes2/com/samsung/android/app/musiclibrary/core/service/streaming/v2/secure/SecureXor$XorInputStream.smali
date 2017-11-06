.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorInputStream;
.super Ljava/io/FilterInputStream;
.source "SecureXor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XorInputStream"
.end annotation


# instance fields
.field private final mKey:B


# direct methods
.method constructor <init>(Ljava/io/InputStream;B)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "key"    # B

    .prologue
    .line 117
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    iput-byte p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorInputStream;->mKey:B

    .line 119
    return-void
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 124
    .local v0, "b":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 125
    iget-byte v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorInputStream;->mKey:B

    xor-int/2addr v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 127
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 133
    .local v1, "numBytes":I
    if-gtz v1, :cond_1

    .line 139
    :cond_0
    return v1

    .line 136
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 137
    add-int v2, p2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    iget-byte v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorInputStream;->mKey:B

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SecureXor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XorOutputStream"
.end annotation


# instance fields
.field private final mKey:B


# direct methods
.method constructor <init>(Ljava/io/OutputStream;B)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # B

    .prologue
    .line 147
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 148
    iput-byte p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorOutputStream;->mKey:B

    .line 149
    return-void
.end method

.method private xor(I)B
    .locals 1
    .param p1, "b"    # I

    .prologue
    .line 152
    iget-byte v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorOutputStream;->mKey:B

    xor-int/2addr v0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorOutputStream;->xor(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 158
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 163
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorOutputStream;->xor(I)B

    move-result v1

    aput-byte v1, p1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 166
    return-void
.end method

.method public write([BII)V
    .locals 2
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
    .line 170
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 171
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorOutputStream;->xor(I)B

    move-result v1

    aput-byte v1, p1, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 174
    return-void
.end method

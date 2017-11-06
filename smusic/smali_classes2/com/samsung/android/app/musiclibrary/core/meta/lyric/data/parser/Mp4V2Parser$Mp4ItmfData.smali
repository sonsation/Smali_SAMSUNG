.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;
.super Ljava/lang/Object;
.source "Mp4V2Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Mp4ItmfData"
.end annotation


# instance fields
.field final locale:I

.field final typeCode:B

.field final typeSetIdentifier:B

.field final value:[B


# direct methods
.method constructor <init>(BBI[B)V
    .locals 0
    .param p1, "identifier"    # B
    .param p2, "code"    # B
    .param p3, "locale"    # I
    .param p4, "value"    # [B

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-byte p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;->typeSetIdentifier:B

    .line 119
    iput-byte p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;->typeCode:B

    .line 120
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;->locale:I

    .line 121
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;->value:[B

    .line 122
    return-void
.end method

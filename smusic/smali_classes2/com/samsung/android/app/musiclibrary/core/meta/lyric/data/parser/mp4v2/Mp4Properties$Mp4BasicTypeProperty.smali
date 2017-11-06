.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;
.source "Mp4Properties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mp4BasicTypeProperty"
.end annotation


# static fields
.field private static final UNDEFINED:I = 0xff


# instance fields
.field private mBasicType:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V
    .locals 1
    .param p1, "parentAtom"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    const/16 v0, 0xff

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;I)V

    .line 126
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;I)V
    .locals 1
    .param p1, "parentAtom"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "basicType"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V

    .line 122
    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;->mBasicType:I

    .line 130
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;->mBasicType:I

    .line 131
    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;->mBasicType:I

    return v0
.end method

.method read(Ljava/io/RandomAccessFile;I)V
    .locals 2
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "index"    # I

    .prologue
    .line 136
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;->mBasicType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, 0xff

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;->mBasicType:I

    goto :goto_0
.end method

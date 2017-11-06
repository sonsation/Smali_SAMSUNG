.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms;
.super Ljava/lang/Object;
.source "Mp4Atoms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4StandardAtom;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4ItemAtom;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4UdtaAtom;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4RootAtoms;
    }
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DATA_LYR:Ljava/lang/String; = "\ufffdlyr"

.field private static final FREE:Ljava/lang/String; = "free"

.field public static final FTYP:Ljava/lang/String; = "ftyp"

.field public static final HDLR:Ljava/lang/String; = "hdlr"

.field public static final HINF:Ljava/lang/String; = "hinf"

.field public static final ILST:Ljava/lang/String; = "ilst"

.field private static final MANY:Z = false

.field public static final MEAN:Ljava/lang/String; = "mean"

.field public static final META:Ljava/lang/String; = "meta"

.field public static final MOOV:Ljava/lang/String; = "moov"

.field public static final MVHD:Ljava/lang/String; = "mvhd"

.field public static final NAME:Ljava/lang/String; = "name"

.field private static final ONLY_ONE:Z = true

.field private static final OPTIONAL:Z = false

.field private static final REQUIRED:Z = true

.field private static final SKIP:Ljava/lang/String; = "skip"

.field public static final UDTA:Ljava/lang/String; = "udta"

.field public static final UUID:Ljava/lang/String; = "uuid"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static create(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
    .locals 2
    .param p0, "file"    # Ljava/io/RandomAccessFile;
    .param p1, "parent"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 72
    if-nez p2, :cond_0

    .line 73
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4RootAtoms;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4RootAtoms;-><init>(Ljava/io/RandomAccessFile;)V

    .line 90
    :goto_0
    return-object v1

    .line 76
    :cond_0
    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->getType()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "pType":Ljava/lang/String;
    const-string v1, "ilst"

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms;->descendsFrom(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    const-string v1, "ilst"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4ItemAtom;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4ItemAtom;-><init>(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    const-string v1, "data"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;-><init>(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;)V

    goto :goto_0

    .line 87
    .end local v0    # "pType":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "udta"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4UdtaAtom;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4UdtaAtom;-><init>(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;)V

    goto :goto_0

    .line 90
    :cond_3
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4StandardAtom;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4StandardAtom;-><init>(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static descendsFrom(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)Z
    .locals 3
    .param p0, "parent"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    move-object v0, p0

    .local v0, "atom":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
    :goto_1
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    const/4 v1, 0x1

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->getParentAtom()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;

    move-result-object v0

    goto :goto_1
.end method

.method public static path(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "parentPath"    # Ljava/lang/String;
    .param p1, "childPath"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    .end local p1    # "childPath":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 65
    .restart local p1    # "childPath":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 66
    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

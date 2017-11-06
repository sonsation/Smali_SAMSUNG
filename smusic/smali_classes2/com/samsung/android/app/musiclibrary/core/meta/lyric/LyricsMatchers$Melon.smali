.class abstract enum Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;
.super Ljava/lang/Enum;
.source "LyricsMatchers.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Melon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

.field public static final enum DCF_XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

.field private static final DEFAULT_FOLDER_PATH:Ljava/lang/String; = "lyric"

.field public static final enum XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon$1;

    const-string v1, "DCF_XSYL"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->DCF_XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    .line 91
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon$2;

    const-string v1, "XSYL"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->DCF_XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->XSYL:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$1;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    invoke-virtual {v0}, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;

    return-object v0
.end method


# virtual methods
.method abstract makeFileName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public matches(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "songPath"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    .prologue
    .line 115
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 116
    .local v1, "index":I
    const-string v0, ""

    .line 117
    .local v0, "folderPath":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 118
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lyric"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$Melon;->makeFileName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

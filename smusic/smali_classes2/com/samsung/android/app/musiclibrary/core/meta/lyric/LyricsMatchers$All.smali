.class abstract enum Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;
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
    name = "All"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;

.field public static final enum Lyric:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All$1;

    const-string v1, "Lyric"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;->Lyric:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;->Lyric:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$1;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;

    invoke-virtual {v0}, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;

    return-object v0
.end method

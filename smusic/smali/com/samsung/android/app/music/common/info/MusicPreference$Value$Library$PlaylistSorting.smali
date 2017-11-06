.class public Lcom/samsung/android/app/music/common/info/MusicPreference$Value$Library$PlaylistSorting;
.super Ljava/lang/Object;
.source "MusicPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/info/MusicPreference$Value$Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistSorting"
.end annotation


# static fields
.field public static ALPHABETICAL:Ljava/lang/String;

.field public static PLAY_ORDER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 228
    const-string v0, "alphabetical"

    sput-object v0, Lcom/samsung/android/app/music/common/info/MusicPreference$Value$Library$PlaylistSorting;->ALPHABETICAL:Ljava/lang/String;

    .line 230
    const-string/jumbo v0, "play_order"

    sput-object v0, Lcom/samsung/android/app/music/common/info/MusicPreference$Value$Library$PlaylistSorting;->PLAY_ORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

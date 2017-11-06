.class public final enum Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;
.super Ljava/lang/Enum;
.source "StorePageLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/StorePageLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorePageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field public static final enum ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field public static final enum ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field public static final enum BANNER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field public static final enum BANNER_SMALL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field public static final enum COVER_ART:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field public static final enum MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field public static final enum MUSIC_CATEGORY_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field public static final enum NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field public static final enum PICK:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field public static final enum PICK_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field public static final enum RADIOS_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field public static final enum RECOMMEND_RADIOS:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field public static final enum TOP_CHART:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field public static final enum VIDEO:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field public static final enum VIDEO_PLAYER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;


# instance fields
.field private final mAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const-string v1, "BANNER"

    const-string v2, "milk.store.banner"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->BANNER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 43
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const-string v1, "BANNER_SMALL"

    const-string v2, "milk.store.banner_small"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->BANNER_SMALL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 44
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const-string v1, "TOP_CHART"

    const-string v2, "milk.store.top_chart"

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->TOP_CHART:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 45
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const-string v1, "ALBUM"

    const-string v2, "milk.store.album"

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 46
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const-string v1, "ARTIST"

    const-string v2, "milk.store.artist"

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 47
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const-string v1, "NEW_RELEASE"

    const/4 v2, 0x5

    const-string v3, "milk.store.new_release"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const-string v1, "PICK"

    const/4 v2, 0x6

    const-string v3, "milk.store.pick"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->PICK:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const-string v1, "PICK_DETAIL"

    const/4 v2, 0x7

    const-string v3, "milk.store.pick_detail"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->PICK_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 50
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const-string v1, "RECOMMEND_RADIOS"

    const/16 v2, 0x8

    const-string v3, "milk.store.recommendradio"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->RECOMMEND_RADIOS:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 51
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const-string v1, "RADIOS_DETAIL"

    const/16 v2, 0x9

    const-string v3, "milk.store.radios_detail"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->RADIOS_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 52
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const-string v1, "VIDEO"

    const/16 v2, 0xa

    const-string v3, "milk.store.video"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->VIDEO:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 53
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const-string v1, "VIDEO_PLAYER"

    const/16 v2, 0xb

    const-string v3, "milk.store.video_player"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->VIDEO_PLAYER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const-string v1, "COVER_ART"

    const/16 v2, 0xc

    const-string v3, "milk.store.cover_art"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->COVER_ART:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 55
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const-string v1, "MUSIC_CATEGORY"

    const/16 v2, 0xd

    const-string v3, "milk.store.music_categorylist"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 56
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const-string v1, "MUSIC_CATEGORY_DETAIL"

    const/16 v2, 0xe

    const-string v3, "milk.store.category.category_detail"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->MUSIC_CATEGORY_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 41
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->BANNER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->BANNER_SMALL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->TOP_CHART:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->PICK:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->PICK_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->RECOMMEND_RADIOS:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->RADIOS_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->VIDEO:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->VIDEO_PLAYER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->COVER_ART:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->MUSIC_CATEGORY_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->mAction:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->mAction:Ljava/lang/String;

    return-object v0
.end method

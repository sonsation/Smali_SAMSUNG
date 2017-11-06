.class public final Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;
.super Ljava/lang/Object;
.source "BrowsableItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems$PlayableItems;,
        Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems$RootItems;,
        Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems$Root;
    }
.end annotation


# static fields
.field private static final ITEM_TYPE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OTHER_ITEMS_KEY:I = 0x5

.field static final PATH_DIVIDER:Ljava/lang/String; = "/"

.field public static final ROOT_BROWSABLE_ITEMS_KEY:I = 0x2

.field public static final ROOT_KEY:I = 0x1

.field public static final ROOT_PLAYABLE_ITEMS_KEY:I = 0x3

.field public static final ROOT_PLAYABLE_ONE_ITEM_KEY:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    .line 32
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "root"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "bt_root"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "root_include_online"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Albums"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Artists"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Playlists"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Genres"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Folders"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Composers"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Top picks"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Popular albums"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Tracks"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string/jumbo v1, "req_track_one"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategoryType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

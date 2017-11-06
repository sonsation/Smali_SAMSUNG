.class public Lcom/samsung/android/app/music/list/local/query/MostPlayedCardViewQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "MostPlayedCardViewQueryArgs.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 12
    const v0, 0x10001

    .line 13
    .local v0, "cpAttrs":I
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 14
    const/4 v0, 0x3

    .line 16
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$MostPlayedRank;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/query/MostPlayedCardViewQueryArgs;->uri:Landroid/net/Uri;

    .line 18
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "album_id"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "dummy"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "cp_attrs"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "list_type"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/query/MostPlayedCardViewQueryArgs;->projection:[Ljava/lang/String;

    .line 27
    return-void
.end method

.class public Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "HeartQueryArgs.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 10
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->uri:Landroid/net/Uri;

    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "favorite_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "category_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cp_attrs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "sub_category_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->projection:[Ljava/lang/String;

    .line 22
    const-string v0, "data1>0"

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->selection:Ljava/lang/String;

    .line 24
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "data1>0 OR (category_type = 85 OR category_type = 84 OR category_type = 86)"

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->selection:Ljava/lang/String;

    .line 34
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 35
    const-string v0, "display_order"

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->orderBy:Ljava/lang/String;

    .line 36
    return-void
.end method

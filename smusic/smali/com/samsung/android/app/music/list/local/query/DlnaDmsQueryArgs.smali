.class public Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "DlnaDmsQueryArgs.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 10
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Server;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;->uri:Landroid/net/Uri;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "provider_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "provider_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_art"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;->projection:[Ljava/lang/String;

    .line 14
    iput-object v3, p0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;->selection:Ljava/lang/String;

    .line 15
    iput-object v3, p0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "provider_name COLLATE LOCALIZED "

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;->orderBy:Ljava/lang/String;

    .line 17
    return-void
.end method

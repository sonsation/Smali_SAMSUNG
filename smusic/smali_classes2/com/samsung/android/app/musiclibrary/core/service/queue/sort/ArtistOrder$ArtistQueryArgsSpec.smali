.class Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "ArtistOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtistQueryArgsSpec"
.end annotation


# static fields
.field private static final DEFAULT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;->DEFAULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;->uri:Landroid/net/Uri;

    .line 132
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;->DEFAULT_PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;->projection:[Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;->selection:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;->selectionArgs:[Ljava/lang/String;

    .line 135
    const-string v0, "artist COLLATE LOCALIZED "

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/ArtistOrder$ArtistQueryArgsSpec;->orderBy:Ljava/lang/String;

    .line 136
    return-void
.end method

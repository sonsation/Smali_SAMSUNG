.class Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BixBySearch"
.end annotation


# static fields
.field static final TOTAL_LOCAL_VIEW_SEARCH_QUERY_TRACK:Ljava/lang/String;

.field static final TOTAL_VIEW_NAME:Ljava/lang/String; = "bixby_total_search"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT audio._id AS _id, title, album, artist, genre_name, bucket_display_name, album_id, artist_id, composer, IFNULL(composer, \'\')||\' \'||IFNULL(bucket_display_name, \'\')||\' \'||IFNULL(genre_name, \'\')||\' \'||IFNULL(artist, \'\')||\' \'||IFNULL(album, \'\')||\' \'||IFNULL(title, \'\') AS match FROM audio WHERE (title != \'\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 674
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;->TOTAL_LOCAL_VIEW_SEARCH_QUERY_TRACK:Ljava/lang/String;

    .line 671
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

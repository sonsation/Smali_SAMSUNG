.class Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo$2;
.super Ljava/lang/Object;
.source "ArtistDetailRelatedArtistInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;->getArtistList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo$2;->this$0:Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;)I
    .locals 3
    .param p1, "lhs"    # Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    .param p2, "rhs"    # Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getSection()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "lhsSection":I
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getSection()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 52
    .local v1, "rhsSection":I
    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    if-le v1, v0, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    check-cast p2, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo$2;->compare(Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;)I

    move-result v0

    return v0
.end method

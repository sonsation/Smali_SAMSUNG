.class public Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;
.super Ljava/lang/Object;
.source "AlbumCoverTagsUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAlbumTagPositionController:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

.field private final mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mTagContainer:Landroid/view/View;

.field private final mTagInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "[I>;>;"
        }
    .end annotation
.end field

.field private mVisibilityPredicate:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$IVisibility;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tagContainer"    # Landroid/view/View;
    .param p3, "o"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->mTagInfoList:Ljava/util/List;

    .line 693
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->mActivity:Landroid/app/Activity;

    .line 694
    iput-object p3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 695
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->mTagContainer:Landroid/view/View;

    .line 696
    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->mTagContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$IVisibility;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->mVisibilityPredicate:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$IVisibility;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->mTagInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->mAlbumTagPositionController:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    return-object v0
.end method


# virtual methods
.method public varargs addTag(Landroid/view/View;[I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;
    .locals 2
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "types"    # [I

    .prologue
    .line 699
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->mTagInfoList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    return-object p0
.end method

.method public build()Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
    .locals 2

    .prologue
    .line 714
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;)V

    return-object v0
.end method

.method public setTagPositionController(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;
    .locals 0
    .param p1, "positionController"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->mAlbumTagPositionController:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    .line 710
    return-object p0
.end method

.method public setVisibilityPredicate(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$IVisibility;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;
    .locals 0
    .param p1, "v"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$IVisibility;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->mVisibilityPredicate:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$IVisibility;

    .line 705
    return-object p0
.end method

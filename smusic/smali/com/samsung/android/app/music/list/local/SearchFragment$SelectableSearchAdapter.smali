.class Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectableSearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;
    }
.end annotation


# static fields
.field private static final ID_MAX:J = 0xcccccccccccccccL

.field private static final MIME_TYPE_ALBUM_DEFAULT_ID:J = 0x1999999999999998L

.field private static final MIME_TYPE_ARTIST_DEFAULT_ID:J = 0xcccccccccccccccL

.field private static final MIME_TYPE_TRACK_DEFAULT_ID:J = 0x2666666666666664L


# instance fields
.field private final mAlbumPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mArtistPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRowColIdIndex:I

.field private final mTrackPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)V

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mArtistPositions:Ljava/util/List;

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mAlbumPositions:Ljava/util/List;

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mTrackPositions:Ljava/util/List;

    .line 615
    return-void
.end method


# virtual methods
.method public getFirstItemPosition(I)I
    .locals 3
    .param p1, "mimeType"    # I

    .prologue
    const/4 v2, 0x0

    .line 673
    const/4 v0, -0x1

    .line 674
    .local v0, "position":I
    packed-switch p1, :pswitch_data_0

    .line 692
    :cond_0
    :goto_0
    return v0

    .line 676
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mArtistPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 677
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mArtistPositions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 681
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mAlbumPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mAlbumPositions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 686
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mTrackPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 687
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mTrackPositions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 674
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemCount(I)I
    .locals 2
    .param p1, "mimeType"    # I

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, "count":I
    packed-switch p1, :pswitch_data_0

    .line 709
    :goto_0
    return v0

    .line 699
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mArtistPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 700
    goto :goto_0

    .line 702
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mAlbumPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 703
    goto :goto_0

    .line 705
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mTrackPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 706
    goto :goto_0

    .line 697
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 625
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 626
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 627
    const-wide/16 v2, -0x1

    .line 643
    :goto_0
    return-wide v2

    .line 629
    :cond_0
    iget v4, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mRowColIdIndex:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 630
    .local v2, "id":J
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getMatchedMimeType(Landroid/database/Cursor;)I

    move-result v1

    .line 631
    .local v1, "mimeType":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 633
    :pswitch_0
    const-wide v4, 0xcccccccccccccccL

    add-long/2addr v2, v4

    .line 634
    goto :goto_0

    .line 636
    :pswitch_1
    const-wide v4, 0x1999999999999998L

    add-long/2addr v2, v4

    .line 637
    goto :goto_0

    .line 639
    :pswitch_2
    const-wide v4, 0x2666666666666664L    # 1.05891185171661E-123

    add-long/2addr v2, v4

    .line 640
    goto :goto_0

    .line 631
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 619
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 620
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mRowColIdIndex:I

    .line 621
    return-void
.end method

.method public setMimeTypeInfo(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 648
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->setMimeTypeInfo(Landroid/database/Cursor;)V

    .line 649
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mArtistPositions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 650
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mAlbumPositions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 651
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mTrackPositions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 652
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 654
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getMatchedMimeType(Landroid/database/Cursor;)I

    move-result v0

    .line 655
    .local v0, "mimeType":I
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 656
    .local v1, "position":I
    packed-switch v0, :pswitch_data_0

    .line 668
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 670
    .end local v0    # "mimeType":I
    .end local v1    # "position":I
    :cond_1
    return-void

    .line 658
    .restart local v0    # "mimeType":I
    .restart local v1    # "position":I
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mArtistPositions:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 661
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mAlbumPositions:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 664
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->mTrackPositions:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 656
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

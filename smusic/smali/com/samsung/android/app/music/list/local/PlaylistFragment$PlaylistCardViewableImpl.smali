.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistCardViewableImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;
    }
.end annotation


# instance fields
.field private mCardViewHolder:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;

.field private final mItemHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mLoader:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

.field private mOOBEFlagEnabled:Z

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V
    .locals 1

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mItemHolders:Ljava/util/List;

    .line 1243
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->restoreLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->forceLoad()V

    .line 1246
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->isOOBEFlagEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mOOBEFlagEnabled:Z

    .line 1247
    return-void
.end method

.method private getMatchedItemViewResId(I)I
    .locals 4
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation

    .prologue
    .line 1505
    packed-switch p1, :pswitch_data_0

    .line 1519
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1507
    :pswitch_0
    const v0, 0x7f120182

    .line 1521
    .local v0, "resId":I
    :goto_0
    return v0

    .line 1510
    .end local v0    # "resId":I
    :pswitch_1
    const v0, 0x7f120188

    .line 1511
    .restart local v0    # "resId":I
    goto :goto_0

    .line 1513
    .end local v0    # "resId":I
    :pswitch_2
    const v0, 0x7f12018c

    .line 1514
    .restart local v0    # "resId":I
    goto :goto_0

    .line 1516
    .end local v0    # "resId":I
    :pswitch_3
    const v0, 0x7f120190

    .line 1517
    .restart local v0    # "resId":I
    goto :goto_0

    .line 1505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMatchedNoItemViewResId(I)I
    .locals 4
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation

    .prologue
    .line 1527
    packed-switch p1, :pswitch_data_0

    .line 1541
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1529
    :pswitch_0
    const v0, 0x7f120502

    .line 1543
    .local v0, "resId":I
    :goto_0
    return v0

    .line 1532
    .end local v0    # "resId":I
    :pswitch_1
    const v0, 0x7f120504

    .line 1533
    .restart local v0    # "resId":I
    goto :goto_0

    .line 1535
    .end local v0    # "resId":I
    :pswitch_2
    const v0, 0x7f120506

    .line 1536
    .restart local v0    # "resId":I
    goto :goto_0

    .line 1538
    .end local v0    # "resId":I
    :pswitch_3
    const v0, 0x7f120508

    .line 1539
    .restart local v0    # "resId":I
    goto :goto_0

    .line 1527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isOOBEFlagEnabled()Z
    .locals 4

    .prologue
    .line 1547
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "music_player_pref"

    const/4 v3, 0x0

    .line 1548
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1549
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "OOBE_flag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private restoreLoader()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1379
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    if-nez v2, :cond_0

    .line 1380
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getListType()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 1381
    .local v0, "cursorLoader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    .end local v0    # "cursorLoader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    .line 1382
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1384
    :cond_0
    return v1
.end method

.method private updateOOBELayout()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 1388
    const/4 v3, 0x1

    .line 1389
    .local v3, "startPosition":I
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->access$1800(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/UiUtils;->isPortrait(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 1390
    .local v0, "endPosition":I
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mOOBEFlagEnabled:Z

    if-eqz v4, :cond_3

    .line 1391
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mCardViewHolder:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;

    iget-object v4, v4, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1392
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mCardViewHolder:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;

    iget-object v4, v4, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->guideView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1393
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mCardViewHolder:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;

    iget-object v4, v4, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->secondRow:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1394
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mCardViewHolder:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;

    iget-object v4, v4, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->secondRow:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    :cond_0
    move v2, v3

    .local v2, "i":I
    :goto_1
    if-gt v2, v0, :cond_7

    .line 1397
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mItemHolders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;

    .line 1398
    .local v1, "holder":Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;
    iget-object v4, v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1399
    iget-object v4, v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 1400
    iget-object v4, v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1389
    .end local v0    # "endPosition":I
    .end local v1    # "holder":Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1404
    .restart local v0    # "endPosition":I
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mCardViewHolder:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;

    iget-object v4, v4, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1405
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mCardViewHolder:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;

    iget-object v4, v4, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->guideView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1406
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mCardViewHolder:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;

    iget-object v4, v4, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->secondRow:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 1407
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mCardViewHolder:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;

    iget-object v4, v4, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->secondRow:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1409
    :cond_4
    move v2, v3

    .restart local v2    # "i":I
    :goto_2
    if-gt v2, v0, :cond_7

    .line 1410
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mItemHolders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;

    .line 1411
    .restart local v1    # "holder":Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;
    iget-object v4, v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->subText:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 1412
    const-string v4, "0"

    iget-object v5, v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1413
    iget-object v4, v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1409
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1415
    :cond_6
    iget-object v4, v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1420
    .end local v1    # "holder":Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;
    :cond_7
    return-void
.end method


# virtual methods
.method public forceLoad()V
    .locals 6

    .prologue
    .line 1364
    const-string v3, "UiList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " forceLoad() mLoader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    if-eqz v3, :cond_2

    .line 1366
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1367
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1368
    .local v1, "context":Landroid/content/Context;
    :goto_0
    if-eqz v1, :cond_0

    .line 1369
    new-instance v2, Lcom/samsung/android/app/music/list/local/query/PlaylistCardViewQuery;

    invoke-direct {v2}, Lcom/samsung/android/app/music/list/local/query/PlaylistCardViewQuery;-><init>()V

    .line 1370
    .local v2, "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->setQueryArgs(Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    .line 1371
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->forceLoad()V

    .line 1376
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :cond_0
    :goto_1
    return-void

    .line 1367
    .restart local v0    # "a":Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1373
    .end local v0    # "a":Landroid/app/Activity;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->restoreLoader()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1374
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->forceLoad()V

    goto :goto_1
.end method

.method public getCardViewItemCount()I
    .locals 1

    .prologue
    .line 1499
    const/4 v0, 0x4

    return v0
.end method

.method public onCreateCardViewHolder(Landroid/view/ViewGroup;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1252
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401e9

    const/4 v3, 0x0

    .line 1253
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1254
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mCardViewHolder:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;

    .line 1255
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mCardViewHolder:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;

    return-object v1
.end method

.method public onCreateItemViewHolder(Landroid/view/View;I)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
    .locals 4
    .param p1, "root"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const v3, 0x7f120116

    .line 1261
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;)V

    .line 1262
    .local v0, "holder":Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->getMatchedItemViewResId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->itemView:Landroid/view/View;

    .line 1263
    iget-object v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f120119

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->mainText:Landroid/widget/TextView;

    .line 1264
    iget-object v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f12050a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->subText:Landroid/widget/TextView;

    .line 1265
    iget-object v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 1266
    iget-object v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->thumbnailClickArea:Landroid/view/View;

    .line 1267
    iget-object v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f12011b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->playIcon:Landroid/view/View;

    .line 1268
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->getMatchedNoItemViewResId(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemViewStubId:I

    .line 1270
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mItemHolders:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1271
    return-object v0
.end method

.method public onCreateLoader()Landroid/content/Loader;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1492
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/PlaylistCardViewQuery;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/query/PlaylistCardViewQuery;-><init>()V

    .line 1493
    .local v0, "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    .line 1494
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    return-object v1
.end method

.method public onPlayIconClick(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 1456
    if-eqz p2, :cond_1

    .line 1457
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1458
    .local v0, "context":Landroid/content/Context;
    const-string v5, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1459
    .local v2, "id":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/common/util/player/PlaylistPlayUtils;->getSongList(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v3

    .line 1460
    .local v3, "list":[J
    const/4 v5, -0x1

    invoke-static {v5, v2, v3, v4}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(ILjava/lang/String;[JI)V

    .line 1461
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    if-eqz v3, :cond_0

    array-length v4, v3

    :cond_0
    invoke-static {v0, v6, v7, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->loggingPlayFromShortCut(Landroid/content/Context;JI)V

    .line 1465
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1479
    const/4 v1, 0x0

    .line 1481
    .local v1, "detailValue":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 1482
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .line 1483
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getScreenId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1045"

    invoke-virtual {v4, v5, v6, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "detailValue":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "list":[J
    :cond_1
    return-void

    .line 1467
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "list":[J
    :pswitch_0
    const-string v1, "Recently added"

    .line 1468
    .restart local v1    # "detailValue":Ljava/lang/String;
    goto :goto_0

    .line 1470
    .end local v1    # "detailValue":Ljava/lang/String;
    :pswitch_1
    const-string v1, "Most played"

    .line 1471
    .restart local v1    # "detailValue":Ljava/lang/String;
    goto :goto_0

    .line 1473
    .end local v1    # "detailValue":Ljava/lang/String;
    :pswitch_2
    const-string v1, "Recently played"

    .line 1474
    .restart local v1    # "detailValue":Ljava/lang/String;
    goto :goto_0

    .line 1476
    .end local v1    # "detailValue":Ljava/lang/String;
    :pswitch_3
    const-string v1, "Favorites"

    .line 1477
    .restart local v1    # "detailValue":Ljava/lang/String;
    goto :goto_0

    .line 1465
    nop

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onThumbnailClick(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1424
    if-eqz p2, :cond_0

    .line 1425
    const-string v4, "_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1426
    .local v2, "id":J
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListItemTextResId(J)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1427
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x100004

    .line 1428
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 1427
    invoke-static {v4, v5, v6, v1}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 1431
    long-to-int v4, v2

    packed-switch v4, :pswitch_data_0

    .line 1445
    const/4 v0, 0x0

    .line 1447
    .local v0, "eventId":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 1448
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .line 1449
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getScreenId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    .end local v0    # "eventId":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "id":J
    :cond_0
    return-void

    .line 1433
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "id":J
    :pswitch_0
    const-string v0, "1041"

    .line 1434
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 1436
    .end local v0    # "eventId":Ljava/lang/String;
    :pswitch_1
    const-string v0, "1042"

    .line 1437
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 1439
    .end local v0    # "eventId":Ljava/lang/String;
    :pswitch_2
    const-string v0, "1043"

    .line 1440
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 1442
    .end local v0    # "eventId":Ljava/lang/String;
    :pswitch_3
    const-string v0, "1044"

    .line 1443
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 1431
    nop

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public updateCardView(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    .line 1276
    return-void
.end method

.method public updateCardViewItem(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 17
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1283
    if-eqz p2, :cond_6

    .line 1284
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 1285
    .local v8, "position":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    const-string v14, "_id"

    .line 1286
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1285
    invoke-static {v14, v15}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListItemTextResId(J)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1287
    .local v6, "name":Ljava/lang/String;
    const-string v13, "number_of_tracks"

    .line 1288
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1287
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1294
    .local v7, "numTracks":I
    :goto_0
    const-string v13, "UiList"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " updateCardViewItem() | position: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, p1

    .line 1296
    check-cast v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;

    .line 1297
    .local v5, "itemViewHolder":Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mOOBEFlagEnabled:Z

    if-eqz v13, :cond_1

    .line 1298
    const/4 v13, 0x2

    if-eq v8, v13, :cond_0

    const/4 v13, 0x3

    if-ne v8, v13, :cond_1

    .line 1299
    :cond_0
    if-lez v7, :cond_1

    .line 1300
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mOOBEFlagEnabled:Z

    .line 1301
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v13}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "music_player_pref"

    const/4 v15, 0x0

    .line 1302
    invoke-virtual {v13, v14, v15}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 1303
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1304
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v13, "OOBE_flag"

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mOOBEFlagEnabled:Z

    invoke-interface {v4, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1305
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1306
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x4

    new-array v14, v14, [J

    fill-array-data v14, :array_0

    invoke-static {v13, v14}, Lcom/samsung/android/app/music/common/util/ListUtils;->saveDynamicDefaultPlaylistIdsToPref(Landroid/content/Context;[J)V

    .line 1314
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    if-eqz p2, :cond_7

    if-lez v7, :cond_7

    .line 1315
    const-string v13, "album_id"

    .line 1316
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1317
    .local v10, "thumbnailId":J
    iget-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->mainText:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v13}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1320
    .local v9, "res":Landroid/content/res/Resources;
    const v13, 0x7f0c0004

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v9, v13, v7, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1321
    .local v12, "trackCount":Ljava/lang/String;
    iget-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->subText:Landroid/widget/TextView;

    if-eqz v13, :cond_2

    .line 1322
    iget-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    :cond_2
    const-string v13, "cp_attrs"

    .line 1325
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1326
    .local v3, "cpAttrs":I
    const v13, 0x7f0d0063

    invoke-static {v13}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v13

    .line 1327
    invoke-static {v3}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14, v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->thumbnail:Landroid/widget/ImageView;

    sget v15, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    .line 1328
    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToImageView(Landroid/widget/ImageView;I)V

    .line 1329
    iget-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->itemView:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1330
    iget-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemView:Landroid/view/View;

    if-eqz v13, :cond_3

    .line 1331
    iget-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemView:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1334
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1356
    .end local v3    # "cpAttrs":I
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "thumbnailId":J
    .end local v12    # "trackCount":Ljava/lang/String;
    .local v2, "contentDescription":Ljava/lang/String;
    :goto_1
    const/4 v13, 0x3

    if-eq v8, v13, :cond_4

    if-nez p2, :cond_5

    iget-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->itemView:Landroid/view/View;

    .line 1357
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v13

    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->getMatchedItemViewResId(I)I

    move-result v14

    if-ne v13, v14, :cond_5

    .line 1358
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->updateOOBELayout()V

    .line 1360
    :cond_5
    return-object v2

    .line 1290
    .end local v2    # "contentDescription":Ljava/lang/String;
    .end local v5    # "itemViewHolder":Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "numTracks":I
    .end local v8    # "position":I
    :cond_6
    const/4 v8, -0x1

    .line 1291
    .restart local v8    # "position":I
    const/4 v6, 0x0

    .line 1292
    .restart local v6    # "name":Ljava/lang/String;
    const/4 v7, 0x0

    .restart local v7    # "numTracks":I
    goto/16 :goto_0

    .line 1336
    .restart local v5    # "itemViewHolder":Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;
    :cond_7
    iget-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemView:Landroid/view/View;

    if-nez v13, :cond_8

    .line 1337
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->mCardViewHolder:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;

    iget-object v13, v13, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistCardViewHolder;->itemView:Landroid/view/View;

    iget v14, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemViewStubId:I

    .line 1338
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewStub;

    invoke-virtual {v13}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v13

    iput-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemView:Landroid/view/View;

    .line 1339
    iget-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemView:Landroid/view/View;

    const v14, 0x7f120119

    .line 1340
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemMainText:Landroid/widget/TextView;

    .line 1341
    iget-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemView:Landroid/view/View;

    const v14, 0x7f12022f

    .line 1342
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iput-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemThumbnailClickArea:Landroid/view/View;

    .line 1344
    :cond_8
    iget-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemMainText:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1345
    iget-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->subText:Landroid/widget/TextView;

    if-eqz v13, :cond_9

    .line 1346
    iget-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->subText:Landroid/widget/TextView;

    const-string v14, "0"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1349
    :cond_9
    iget-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->itemView:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1350
    iget-object v13, v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemView:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1352
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .line 1353
    invoke-virtual {v14}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a013a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "contentDescription":Ljava/lang/String;
    goto/16 :goto_1

    .line 1306
    :array_0
    .array-data 8
        -0xb
        -0xc
        -0xd
        -0xe
    .end array-data
.end method

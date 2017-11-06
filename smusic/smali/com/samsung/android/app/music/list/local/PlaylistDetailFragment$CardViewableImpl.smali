.class Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;
.super Ljava/lang/Object;
.source "PlaylistDetailFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CardViewableImpl"
.end annotation


# instance fields
.field private final mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 2

    .prologue
    .line 941
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 942
    new-instance v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v1, "title"

    .line 943
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setSubTextCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setThumbnailKeyCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    const-string v1, "cp_attrs"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 944
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setCardViewItemCount(I)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    const v1, 0x7f04002f

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setCardViewItemLayout(I)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->build()Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    .line 945
    return-void
.end method

.method private getListTypeText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listType"    # I

    .prologue
    .line 1098
    packed-switch p2, :pswitch_data_0

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a0219

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1100
    :pswitch_0
    const v0, 0x7f0a0071

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1102
    :pswitch_1
    const v0, 0x7f0a007c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1098
    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCardViewItemCount()I
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->getCardViewItemCount()I

    move-result v0

    return v0
.end method

.method public onCreateCardViewHolder(Landroid/view/ViewGroup;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 950
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->onCreateCardViewHolder(Landroid/view/ViewGroup;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/View;I)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
    .locals 11
    .param p1, "root"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 956
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    invoke-virtual {v5, p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->onCreateItemViewHolder(Landroid/view/View;I)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    move-result-object v2

    .line 957
    .local v2, "itemViewHolder":Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
    iget-object v0, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    .line 958
    .local v0, "constraintLayout":Landroid/support/constraint/ConstraintLayout;
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 959
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 960
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    const v5, 0x7f0d02c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 961
    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 963
    new-instance v1, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v1}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 964
    .local v1, "constraintSet":Landroid/support/constraint/ConstraintSet;
    invoke-virtual {v1, v0}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    .line 965
    const v5, 0x7f120116

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/support/constraint/ConstraintSet;->setDimensionRatio(ILjava/lang/String;)V

    .line 966
    invoke-virtual {v1, v0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    .line 969
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "args_playlist_id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, -0xc

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 970
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->mainText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 971
    const v5, 0x7f0d02f6

    .line 972
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 973
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->mainText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->mainText:Landroid/widget/TextView;

    const v6, 0x7f0d02f8

    .line 975
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 974
    invoke-virtual {v5, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 976
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 977
    const v5, 0x7f0d02f0

    .line 978
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 979
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 980
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->subText:Landroid/widget/TextView;

    const v6, 0x7f0d02f2

    .line 981
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 980
    invoke-virtual {v5, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 983
    :cond_0
    return-object v2
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
    .line 1088
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1089
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    new-instance v2, Lcom/samsung/android/app/music/list/local/query/MostPlayedCardViewQueryArgs;

    invoke-direct {v2}, Lcom/samsung/android/app/music/list/local/query/MostPlayedCardViewQueryArgs;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    return-object v1
.end method

.method public onPlayIconClick(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v8, 0x10003

    const v7, 0x10002

    const/4 v6, 0x0

    .line 1045
    if-eqz p2, :cond_1

    .line 1046
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1047
    .local v0, "context":Landroid/content/Context;
    const-string v5, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1048
    .local v2, "id":J
    const-string v5, "list_type"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1049
    .local v4, "listType":I
    const-string v5, "cp_attrs"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1050
    .local v1, "cpAttrs":I
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/CpAttrs;->isLocal(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1051
    if-ne v4, v8, :cond_2

    .line 1052
    invoke-static {v0, v2, v3, v6}, Lcom/samsung/android/app/musiclibrary/core/player/util/ArtistPlayUtils;->play(Landroid/content/Context;JZ)V

    .line 1054
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .line 1055
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1045"

    const-string v8, "Artist"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .line 1080
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "PLCV"

    .line 1081
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->convertListTypeToMostPlayedLoggingString(I)Ljava/lang/String;

    move-result-object v7

    .line 1080
    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "cpAttrs":I
    .end local v2    # "id":J
    .end local v4    # "listType":I
    :cond_1
    return-void

    .line 1057
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "cpAttrs":I
    .restart local v2    # "id":J
    .restart local v4    # "listType":I
    :cond_2
    if-ne v4, v7, :cond_0

    .line 1058
    invoke-static {v0, v2, v3, v6}, Lcom/samsung/android/app/musiclibrary/core/player/util/AlbumPlayUtils;->play(Landroid/content/Context;JZ)V

    .line 1060
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .line 1061
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1045"

    const-string v8, "Album"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1064
    :cond_3
    const v5, 0x80002

    if-ne v1, v5, :cond_0

    .line 1065
    if-ne v4, v8, :cond_4

    .line 1066
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/common/util/player/MilkArtistPlayUtils;->play(Landroid/content/Context;J)Z

    .line 1068
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .line 1069
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1045"

    const-string v8, "Artist"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :cond_4
    if-ne v4, v7, :cond_0

    .line 1072
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/common/util/player/MilkAlbumPlayUtils;->play(Landroid/content/Context;J)Z

    .line 1074
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .line 1075
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1045"

    const-string v8, "Album"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onThumbnailClick(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V
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
    const v6, 0x10003

    const v5, 0x10002

    .line 1015
    if-eqz p2, :cond_0

    .line 1016
    const-string v4, "_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1017
    .local v1, "id":Ljava/lang/String;
    const-string v4, "list_type"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1018
    .local v2, "listType":I
    const-string/jumbo v4, "title"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1019
    .local v3, "title":Ljava/lang/String;
    const-string v4, "cp_attrs"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1020
    .local v0, "cpAttrs":I
    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->isLocal(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1021
    if-ne v2, v6, :cond_1

    .line 1022
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1, v3}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1101"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    .end local v0    # "cpAttrs":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "listType":I
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1026
    .restart local v0    # "cpAttrs":I
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "listType":I
    .restart local v3    # "title":Ljava/lang/String;
    :cond_1
    if-ne v2, v5, :cond_0

    .line 1027
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .line 1028
    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v5, 0x0

    invoke-static {v4, v6, v7, v3, v5}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->startActivity(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;)V

    .line 1030
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1102"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    :cond_2
    const v4, 0x80002

    if-ne v0, v4, :cond_0

    .line 1034
    if-ne v2, v6, :cond_3

    .line 1035
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$ArtistDetailActivityLauncher;->startActivity(Landroid/app/Activity;J)V

    goto :goto_0

    .line 1036
    :cond_3
    if-ne v2, v5, :cond_0

    .line 1037
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->startActivity(Landroid/app/Activity;J)V

    goto :goto_0
.end method

.method public updateCardView(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 988
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->updateCardView(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;Landroid/database/Cursor;)V

    .line 990
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f120115

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 991
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 992
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .line 993
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 992
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 995
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    return-void
.end method

.method public updateCardViewItem(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1001
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->updateCardViewItem(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "args_playlist_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0xc

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1003
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "list_type"

    .line 1004
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1003
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->getListTypeText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1006
    .local v1, "mainText":Ljava/lang/String;
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->mainText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1009
    .end local v0    # "contentDescription":Ljava/lang/String;
    .end local v1    # "mainText":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

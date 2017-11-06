.class Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;
.super Ljava/lang/Object;
.source "ListMenuGroup.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/ListMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateModeMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->isPrivateModeMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;Landroid/view/Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;
    .param p1, "x1"    # Landroid/view/Menu;

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->hasPrivateModeRelatedMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;[J)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;
    .param p1, "x1"    # [J

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->isAllPrivateIds([J)Z

    move-result v0

    return v0
.end method

.method private getPrivateQueryColumn(J)Ljava/lang/String;
    .locals 3
    .param p1, "playlistId"    # J

    .prologue
    .line 783
    const-wide/16 v0, -0xb

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xc

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0xe

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0xd

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 786
    :cond_0
    const-string v0, "audio_id"

    .line 788
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "_id"

    goto :goto_0
.end method

.method private getPrivateQueryInfo([JLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 8
    .param p1, "checkedItemAudioIds"    # [J
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 755
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->getListType()I

    move-result v6

    .line 756
    .local v6, "listType":I
    const v1, 0x100004

    if-ne v6, v1, :cond_0

    .line 757
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "local"

    const/4 v5, -0x1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 760
    .local v0, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_cp_attrs!=524296 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 762
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->getPrivateQueryColumn(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_music"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_secretbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 766
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count (distinct "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 767
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->getPrivateQueryColumn(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 779
    :goto_0
    return-object v0

    .line 769
    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 770
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id"

    .line 772
    invoke-static {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_music"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_secretbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 775
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "count (distinct _id)"

    aput-object v2, v1, v7

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    goto :goto_0
.end method

.method private hasPrivateModeRelatedMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 798
    const v0, 0x7f1205a8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f1205ab

    .line 799
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f1205a9

    .line 800
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f1205ac

    .line 801
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllPrivateIds([J)Z
    .locals 12
    .param p1, "checkedItemAudioIds"    # [J

    .prologue
    const/4 v1, 0x0

    .line 724
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    move v11, v1

    .line 750
    :cond_1
    :goto_0
    return v11

    .line 728
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 729
    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->getKeyword()Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->getPrivateQueryInfo([JLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v6

    .line 730
    .local v6, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const/4 v11, 0x0

    .line 733
    .local v11, "isAllPrivate":Z
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 734
    .local v10, "checkedItemIdsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_3

    aget-wide v8, p1, v1

    .line 735
    .local v8, "checkedItemAudioId":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 738
    .end local v8    # "checkedItemAudioId":J
    :cond_3
    const/4 v7, 0x0

    .line 740
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 741
    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 742
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v0, v1, :cond_4

    .line 743
    const/4 v11, 0x1

    .line 746
    :cond_4
    if-eqz v7, :cond_1

    .line 747
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 746
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 747
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private isPrivateModeMenuEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 792
    .line 793
    invoke-static {p1}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 794
    invoke-static {p1}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->isPrivateReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performMenuPrivateModeAction([JZZ)V
    .locals 1
    .param p1, "selectedItemAudioIds"    # [J
    .param p2, "moveToPrivate"    # Z
    .param p3, "isFolder"    # Z

    .prologue
    .line 714
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 715
    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;->startPrivateModeMoveOperation(Landroid/app/Activity;[JZZ)V

    .line 717
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1300(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V

    .line 718
    return-void
.end method

.method private updateMenuVisibleMoveToPrivate(Landroid/view/Menu;IZ)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I
    .param p3, "isAllPrivateIds"    # Z

    .prologue
    const/4 v1, 0x0

    .line 685
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 686
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 694
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->isPrivateModeMenuEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 690
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v2

    if-lez v2, :cond_1

    if-nez p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 692
    :cond_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateMenuVisibleRemoveFromPrivate(Landroid/view/Menu;IZ)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I
    .param p3, "isAllPrivateIds"    # Z

    .prologue
    const/4 v1, 0x0

    .line 698
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 699
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->isPrivateModeMenuEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 703
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v2

    if-lez v2, :cond_1

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 705
    :cond_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 638
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 653
    const/4 v1, 0x1

    .line 655
    .local v1, "handled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 678
    :pswitch_0
    const/4 v1, 0x0

    .line 681
    :goto_0
    return v1

    .line 657
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "MVTP"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 658
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v0

    .line 659
    .local v0, "audioIds":[J
    invoke-direct {p0, v0, v4, v5}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->performMenuPrivateModeAction([JZZ)V

    .line 661
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1300(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V

    goto :goto_0

    .line 664
    .end local v0    # "audioIds":[J
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "MVTP"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 665
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v0

    .line 666
    .restart local v0    # "audioIds":[J
    invoke-direct {p0, v0, v4, v4}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->performMenuPrivateModeAction([JZZ)V

    goto :goto_0

    .line 669
    .end local v0    # "audioIds":[J
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v0

    .line 670
    .restart local v0    # "audioIds":[J
    invoke-direct {p0, v0, v5, v5}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->performMenuPrivateModeAction([JZZ)V

    goto :goto_0

    .line 673
    .end local v0    # "audioIds":[J
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v0

    .line 674
    .restart local v0    # "audioIds":[J
    invoke-direct {p0, v0, v5, v4}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->performMenuPrivateModeAction([JZZ)V

    .line 675
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1300(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V

    goto :goto_0

    .line 655
    :pswitch_data_0
    .packed-switch 0x7f1205a8
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 642
    const v0, 0x7f1205a8

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->updateMenuVisibleMoveToPrivate(Landroid/view/Menu;IZ)V

    .line 643
    const v0, 0x7f1205ab

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 644
    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Z

    move-result v1

    .line 643
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->updateMenuVisibleMoveToPrivate(Landroid/view/Menu;IZ)V

    .line 645
    const v0, 0x7f1205a9

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 646
    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Z

    move-result v1

    .line 645
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->updateMenuVisibleRemoveFromPrivate(Landroid/view/Menu;IZ)V

    .line 647
    const v0, 0x7f1205ac

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 648
    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Z

    move-result v1

    .line 647
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->updateMenuVisibleRemoveFromPrivate(Landroid/view/Menu;IZ)V

    .line 649
    return-void
.end method

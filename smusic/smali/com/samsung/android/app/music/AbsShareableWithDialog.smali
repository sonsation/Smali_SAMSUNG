.class public abstract Lcom/samsung/android/app/music/AbsShareableWithDialog;
.super Ljava/lang/Object;
.source "AbsShareableWithDialog.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;
    }
.end annotation


# static fields
.field private static final EXTRA_BIXBY_CROSS_SHARE_PACKAGES:Ljava/lang/String; = "extra_chooser_bixby_applist"

.field private static final LIMIT_MAX_COUNT:I = 0x1f4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mBixbyCrossSharePackages:Ljava/lang/String;

.field private final mFragment:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mScreenSharingExtra:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/samsung/android/app/music/AbsShareableWithDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "screenSharingExtra"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mActivity:Landroid/app/Activity;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragment:Landroid/app/Fragment;

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragmentManager:Landroid/app/FragmentManager;

    .line 64
    iput-object p2, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mScreenSharingExtra:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->initShareDialog()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "screenSharingExtra"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mActivity:Landroid/app/Activity;

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragment:Landroid/app/Fragment;

    .line 71
    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragmentManager:Landroid/app/FragmentManager;

    .line 72
    iput-object p2, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mScreenSharingExtra:Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->initShareDialog()V

    .line 74
    return-void
.end method

.method private getLocalMediaStoreUris(Landroid/content/Context;[J)Ljava/util/ArrayList;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    move-object/from16 v0, p2

    array-length v11, v0

    .line 186
    .local v11, "itemSize":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v12, "selection":Ljava/lang/StringBuilder;
    const-string v2, "_id"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    new-array v6, v11, [Ljava/lang/String;

    .line 189
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v11, :cond_0

    .line 190
    const-string v2, "?,"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    aget-wide v2, p2, v10

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v10

    .line 189
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 193
    :cond_0
    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 194
    const/16 v2, 0x29

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    .line 195
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .local v13, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;

    const/4 v2, 0x0

    invoke-direct {v8, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 199
    .local v8, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "source_id"

    aput-object v3, v4, v2

    .line 200
    .local v4, "projection":[Ljava/lang/String;
    iget-object v3, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 201
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 200
    .local v9, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 203
    if-nez v9, :cond_3

    .line 204
    const/4 v13, 0x0

    .line 210
    .end local v13    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v9, :cond_1

    if-eqz v3, :cond_2

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_1
    :goto_1
    return-object v13

    .line 210
    :catch_0
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 206
    .restart local v13    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_3
    :goto_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 207
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    .line 208
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 207
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 200
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :catchall_0
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_3
    if-eqz v9, :cond_4

    if-eqz v3, :cond_7

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_4
    throw v2

    :cond_5
    if-eqz v9, :cond_1

    if-eqz v3, :cond_6

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_3
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v2

    goto :goto_3
.end method

.method private initShareDialog()V
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getUserVisibleHint()Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragmentManager:Landroid/app/FragmentManager;

    sget-object v2, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 81
    .local v0, "fg":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 82
    check-cast v0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;

    .end local v0    # "fg":Landroid/app/Fragment;
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->setShareableWithDialog(Lcom/samsung/android/app/music/AbsShareableWithDialog;)V

    goto :goto_0
.end method

.method private isScreenSharingVisible(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SideSyncManager;->isSideSyncConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isHdmiConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->SUPPORT_LIST_SMART_VIEW:Z

    if-eqz v1, :cond_2

    .line 220
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingEnabled(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 222
    :cond_2
    const-string/jumbo v1, "share_music_from_player"

    iget-object v2, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mScreenSharingExtra:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final getBixbyCrossSharePackages()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mBixbyCrossSharePackages:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getSharedItemIds()[J
.end method

.method public setBixbyCrossSharePackages(Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mBixbyCrossSharePackages:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public share()V
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->getSharedItemIds()[J

    move-result-object v0

    .line 91
    .local v0, "ids":[J
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->showLegalDialog([J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mBixbyCrossSharePackages:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->shareInternal(Landroid/content/Context;[JLjava/lang/String;)V

    .line 94
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mBixbyCrossSharePackages:Ljava/lang/String;

    .line 95
    return-void
.end method

.method protected shareInternal(Landroid/content/Context;[JLjava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ids"    # [J
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "bixbyCrossSharePackages"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v8, 0x1f4

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 122
    iget-object v6, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mActivity:Landroid/app/Activity;

    if-nez v6, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    if-eqz p2, :cond_2

    array-length v2, p2

    .line 127
    .local v2, "itemSize":I
    :goto_1
    if-eqz v2, :cond_0

    .line 131
    array-length v6, p2

    if-le v6, v8, :cond_3

    .line 132
    const v6, 0x7f0a01ae

    new-array v7, v7, [Ljava/lang/Object;

    .line 133
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 132
    invoke-static {p1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 134
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v2    # "itemSize":I
    :cond_2
    move v2, v5

    .line 126
    goto :goto_1

    .line 138
    .restart local v2    # "itemSize":I
    :cond_3
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->isExistDrm(Landroid/content/Context;[J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 139
    const v6, 0x7f0a0142

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 140
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 144
    :cond_4
    const/4 v6, 0x2

    invoke-static {p1, p2, v6}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getMusicCountInArray(Landroid/content/Context;[JI)I

    move-result v6

    if-lez v6, :cond_5

    .line 145
    const v6, 0x7f0a0143

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 146
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 151
    :cond_5
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->getLocalMediaStoreUris(Landroid/content/Context;[J)Ljava/util/ArrayList;

    move-result-object v4

    .line 152
    .local v4, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-ne v2, v7, :cond_9

    .line 153
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_8

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    move-object v3, v5

    .line 155
    .local v3, "uri":Landroid/net/Uri;
    :goto_2
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_3
    const-string v5, "audio/*"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    sget-object v5, Lcom/samsung/android/app/music/AbsShareableWithDialog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShareMusic - bixbyCrossSharePackages: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-eqz p3, :cond_6

    .line 163
    const-string v5, "extra_chooser_bixby_applist"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    :cond_6
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->isScreenSharingVisible(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mScreenSharingExtra:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 166
    const-string v5, "more_actions_screen_sharing"

    const/4 v6, 0x1

    .line 167
    invoke-static {p1, v6}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->getScreenSharingMode(Landroid/content/Context;Z)I

    move-result v6

    .line 166
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    const-string/jumbo v5, "share_music_from"

    iget-object v6, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mScreenSharingExtra:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a01af

    .line 171
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    .line 170
    invoke-virtual {v5, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iget-object v5, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragment:Landroid/app/Fragment;

    instance-of v5, v5, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    if-eqz v5, :cond_0

    .line 178
    iget-object v5, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragment:Landroid/app/Fragment;

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;->finishActionMode()V

    goto/16 :goto_0

    .line 154
    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 157
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_9
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 172
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    sget-object v5, Lcom/samsung/android/app/music/AbsShareableWithDialog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShareMusic - ActivityNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    iget-object v5, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragment:Landroid/app/Fragment;

    instance-of v5, v5, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    if-eqz v5, :cond_0

    .line 178
    iget-object v5, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragment:Landroid/app/Fragment;

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;->finishActionMode()V

    goto/16 :goto_0

    .line 174
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_3
    sget-object v5, Lcom/samsung/android/app/music/AbsShareableWithDialog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShareMusic - NullPointerException, uri is null: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    iget-object v5, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragment:Landroid/app/Fragment;

    instance-of v5, v5, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    if-eqz v5, :cond_0

    .line 178
    iget-object v5, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragment:Landroid/app/Fragment;

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;->finishActionMode()V

    goto/16 :goto_0

    .line 177
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v5

    move-object v6, v5

    iget-object v5, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragment:Landroid/app/Fragment;

    instance-of v5, v5, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    if-eqz v5, :cond_a

    .line 178
    iget-object v5, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragment:Landroid/app/Fragment;

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;->finishActionMode()V

    :cond_a
    throw v6
.end method

.method protected final showLegalDialog([J)Z
    .locals 7
    .param p1, "ids"    # [J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 107
    iget-object v5, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "music_player_pref"

    .line 108
    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "show_share_popup"

    .line 110
    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 111
    .local v2, "showLegalDialog":Z
    if-eqz v2, :cond_0

    .line 112
    iget-object v4, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mBixbyCrossSharePackages:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->newInstance([JLjava/lang/String;)Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;

    move-result-object v1

    .line 113
    .local v1, "shareDialog":Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;
    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->setShareableWithDialog(Lcom/samsung/android/app/music/AbsShareableWithDialog;)V

    .line 114
    iget-object v4, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog;->mFragmentManager:Landroid/app/FragmentManager;

    sget-object v5, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 117
    .end local v1    # "shareDialog":Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

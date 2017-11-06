.class public Lcom/samsung/android/app/music/list/common/ListFragmentFactory;
.super Ljava/lang/Object;
.source "ListFragmentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(ILjava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p0, "listType"    # I
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->newInstanceInternal(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p0, "listType"    # I
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->newInstanceInternal(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private static newInstanceInternal(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3
    .param p0, "listType"    # I
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 36
    sparse-switch p0, :sswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not Matched ListType 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :sswitch_0
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;-><init>()V

    .line 76
    :goto_0
    return-object v0

    .line 42
    :sswitch_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->newInstance(J)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-result-object v0

    goto :goto_0

    .line 44
    :sswitch_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->newInstance(JZ)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-result-object v0

    goto :goto_0

    .line 46
    :sswitch_3
    new-instance v0, Lcom/samsung/android/app/music/list/local/AllTrackFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;-><init>()V

    goto :goto_0

    .line 48
    :sswitch_4
    new-instance v0, Lcom/samsung/android/app/music/list/local/AlbumFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;-><init>()V

    goto :goto_0

    .line 50
    :sswitch_5
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;-><init>()V

    goto :goto_0

    .line 52
    :sswitch_6
    new-instance v0, Lcom/samsung/android/app/music/list/local/GenreFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/GenreFragment;-><init>()V

    goto :goto_0

    .line 54
    :sswitch_7
    new-instance v0, Lcom/samsung/android/app/music/list/local/FolderFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/FolderFragment;-><init>()V

    goto :goto_0

    .line 56
    :sswitch_8
    new-instance v0, Lcom/samsung/android/app/music/list/local/ComposerFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;-><init>()V

    goto :goto_0

    .line 58
    :sswitch_9
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->newInstance(JLjava/lang/String;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    move-result-object v0

    goto :goto_0

    .line 60
    :sswitch_a
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;

    move-result-object v0

    goto :goto_0

    .line 62
    :sswitch_b
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    move-result-object v0

    goto :goto_0

    .line 64
    :sswitch_c
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/GenreDetailFragment;

    move-result-object v0

    goto :goto_0

    .line 66
    :sswitch_d
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/FolderDetailFragment;

    move-result-object v0

    goto :goto_0

    .line 68
    :sswitch_e
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/ComposerDetailFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/ComposerDetailFragment;

    move-result-object v0

    goto :goto_0

    .line 70
    :sswitch_f
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;-><init>()V

    goto :goto_0

    .line 72
    :sswitch_10
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    move-result-object v0

    goto :goto_0

    .line 74
    :sswitch_11
    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;-><init>()V

    goto :goto_0

    .line 76
    :sswitch_12
    new-instance v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;-><init>()V

    goto :goto_0

    .line 36
    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_4
        0x10003 -> :sswitch_5
        0x10004 -> :sswitch_0
        0x10006 -> :sswitch_6
        0x10007 -> :sswitch_7
        0x10008 -> :sswitch_8
        0x1000b -> :sswitch_f
        0x1000c -> :sswitch_12
        0x10027 -> :sswitch_b
        0x10030 -> :sswitch_11
        0x100002 -> :sswitch_9
        0x100004 -> :sswitch_1
        0x100005 -> :sswitch_1
        0x100006 -> :sswitch_c
        0x100007 -> :sswitch_d
        0x100008 -> :sswitch_e
        0x10000b -> :sswitch_10
        0x100050 -> :sswitch_2
        0x110001 -> :sswitch_3
        0x110027 -> :sswitch_a
    .end sparse-switch
.end method

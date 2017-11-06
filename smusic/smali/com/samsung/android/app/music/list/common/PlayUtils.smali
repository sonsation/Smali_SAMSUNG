.class public Lcom/samsung/android/app/music/list/common/PlayUtils;
.super Ljava/lang/Object;
.source "PlayUtils.java"


# static fields
.field public static final SHUFFLE_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PlayUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static play(ILjava/lang/String;[JI)V
    .locals 2
    .param p0, "listType"    # I
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "list"    # [J
    .param p3, "position"    # I

    .prologue
    .line 134
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 135
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getEnqueueOption()I

    move-result v0

    .line 137
    .local v0, "enqueueOption":I
    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(ILjava/lang/String;[JII)V

    .line 138
    return-void

    .line 135
    .end local v0    # "enqueueOption":I
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listType"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 109
    .local v3, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    new-instance v4, Lcom/samsung/android/app/music/list/common/PlayUtils$1;

    invoke-direct {v4}, Lcom/samsung/android/app/music/list/common/PlayUtils$1;-><init>()V

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils;->remove(Ljava/util/Collection;Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Condition;)I

    move-result v1

    .line 115
    .local v1, "removed":I
    if-lez v1, :cond_0

    .line 116
    const-string v4, "PlayUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "play. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tracks are removed. remain size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    :goto_0
    return-void

    .line 123
    :cond_1
    if-lez v1, :cond_2

    if-ltz p4, :cond_2

    .line 124
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 126
    .local v2, "selectedTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p4

    .line 129
    .end local v2    # "selectedTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addMilkTrackList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)[J

    move-result-object v0

    .line 130
    .local v0, "playIdList":[J
    invoke-static {p1, p2, v0, p4}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(ILjava/lang/String;[JI)V

    goto :goto_0
.end method

.method public static play(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;I)V
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "fragment":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<+Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/app/music/list/common/PlayUtils;->playInternal(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IIZ)V

    .line 34
    return-void
.end method

.method public static playAll(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "fragment":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<+Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/music/list/common/PlayUtils;->playInternal(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IIZ)V

    .line 38
    return-void
.end method

.method private static playInternal(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IIZ)V
    .locals 20
    .param p1, "position"    # I
    .param p2, "playOption"    # I
    .param p3, "forcePlayAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "fragment":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<+Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    .line 47
    .local v2, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getListType()I

    move-result v12

    .line 48
    .local v12, "listType":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getKeyword()Ljava/lang/String;

    move-result-object v11

    .line 50
    .local v11, "keyword":Ljava/lang/String;
    const/16 v16, -0x1

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    const/4 v14, 0x1

    .line 51
    .local v14, "shuffle":Z
    :goto_0
    move/from16 v13, p1

    .line 52
    .local v13, "queuePosition":I
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemCount()I

    move-result v8

    .line 54
    .local v8, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v3, "audioIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-boolean v16, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v16, :cond_3

    .line 58
    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 59
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getPlayOption()I

    move-result p2

    .line 61
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getEnqueueOption()I

    move-result v9

    .line 69
    .local v9, "enqueueOption":I
    :goto_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v8, :cond_6

    .line 70
    invoke-virtual {v2, v10}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getAudioId(I)J

    move-result-wide v4

    .line 71
    .local v4, "audioId":J
    invoke-virtual {v2, v10}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->isEnabled(I)Z

    move-result v16

    if-eqz v16, :cond_5

    const-wide/16 v16, 0x0

    cmp-long v16, v4, v16

    if-lez v16, :cond_5

    .line 72
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 50
    .end local v3    # "audioIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "audioId":J
    .end local v8    # "count":I
    .end local v9    # "enqueueOption":I
    .end local v10    # "i":I
    .end local v13    # "queuePosition":I
    .end local v14    # "shuffle":Z
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 63
    .restart local v3    # "audioIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v8    # "count":I
    .restart local v13    # "queuePosition":I
    .restart local v14    # "shuffle":Z
    :cond_3
    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 64
    const/16 p2, 0x0

    .line 66
    :cond_4
    const/4 v9, 0x5

    .restart local v9    # "enqueueOption":I
    goto :goto_1

    .line 73
    .restart local v4    # "audioId":J
    .restart local v10    # "i":I
    :cond_5
    move/from16 v0, p1

    if-le v0, v10, :cond_1

    .line 74
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 78
    .end local v4    # "audioId":J
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    .line 79
    .local v15, "size":I
    new-array v6, v15, [J

    .line 80
    .local v6, "audioIdsArray":[J
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v15, :cond_7

    .line 81
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    aput-wide v16, v6, v10

    .line 80
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 84
    :cond_7
    if-nez p3, :cond_8

    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 85
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v7, v0, [J

    const/16 v16, 0x0

    aget-wide v18, v6, v13

    aput-wide v18, v7, v16

    .line 86
    .end local v6    # "audioIdsArray":[J
    .local v7, "audioIdsArray":[J
    const/4 v13, 0x0

    move-object v6, v7

    .line 89
    .end local v7    # "audioIdsArray":[J
    .restart local v6    # "audioIdsArray":[J
    :cond_8
    const-string v16, "UiList"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " playInternal() position: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " | enqueueOption: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " | playOption: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " | queue size: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v6

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-eqz v14, :cond_9

    const/4 v13, -0x1

    .line 96
    .end local v13    # "queuePosition":I
    :cond_9
    invoke-static {v12, v11, v6, v13, v9}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(ILjava/lang/String;[JII)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v12, v11, v15}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->loggingPlayFromLibrary(Landroid/content/Context;ILjava/lang/String;I)V

    .line 102
    return-void
.end method

.method public static shuffleAll(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "fragment":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<+Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;>;"
    const/4 v1, -0x1

    .line 41
    const/4 v0, 0x1

    invoke-static {p0, v1, v1, v0}, Lcom/samsung/android/app/music/list/common/PlayUtils;->playInternal(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IIZ)V

    .line 42
    return-void
.end method

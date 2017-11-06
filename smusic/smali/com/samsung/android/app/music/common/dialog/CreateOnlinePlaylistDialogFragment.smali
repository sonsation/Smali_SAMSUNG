.class public Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;
.super Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;
.source "CreateOnlinePlaylistDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistExecutor;,
        Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistDialogLauncher;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBixbycommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mBixbycommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    return-void
.end method

.method static synthetic access$000([JZZ)Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;
    .locals 1
    .param p0, "x0"    # [J
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getNewInstance([JZZ)Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->onClickPositiveButton(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    return-void
.end method

.method private static getNewInstance([JZZ)Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;
    .locals 5
    .param p0, "ids"    # [J
    .param p1, "finishActivity"    # Z
    .param p2, "launchTrackActivity"    # Z

    .prologue
    .line 47
    sget-object v2, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNewInstance() - ids: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;-><init>()V

    .line 49
    .local v1, "dialog":Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "args_checked_item_ids"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 51
    const-string v2, "args_finish_activity"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    const-string v2, "args_launch_track_activity"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v1
.end method

.method private onClickPositiveButton(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 2
    .param p1, "Bixbycommand"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;->checkNetwork(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mBixbycommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getEditTextMessage()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "newPlaylistName":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->createPlaylist(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 84
    .end local v0    # "newPlaylistName":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 19
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 113
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->isDetached()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    :cond_0
    sget-object v3, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->TAG:Ljava/lang/String;

    const-string v4, "activity is null or destroyed"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 118
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getEditTextMessage()Ljava/lang/String;

    move-result-object v10

    .line 119
    .local v10, "newPlaylistName":Ljava/lang/String;
    if-nez p3, :cond_8

    .line 120
    move-object/from16 v0, p4

    instance-of v3, v0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;

    if-eqz v3, :cond_7

    .line 121
    check-cast p4, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;->getPlaylist()Lcom/samsung/android/app/music/common/model/playlist/Playlist;

    move-result-object v12

    .line 122
    .local v12, "playlist":Lcom/samsung/android/app/music/common/model/playlist/Playlist;
    if-eqz v12, :cond_7

    .line 123
    invoke-virtual {v12}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->getSourcePlaylistId()Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, "sourcePlaylistId":Ljava/lang/String;
    invoke-static {v15, v10}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->createContentValue(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v17

    .line 126
    .local v17, "values":Landroid/content/ContentValues;
    const-string v3, "name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/app/music/provider/MilkContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 128
    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 129
    .local v16, "uri":Landroid/net/Uri;
    if-eqz v16, :cond_6

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "args_checked_item_ids"

    .line 131
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    .line 132
    .local v5, "ids":[J
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    .line 133
    .local v13, "playlistId":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mBixbycommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .line 138
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "args_launch_picker_activity"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x100050

    invoke-static {v3, v4, v13, v10, v2}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 159
    .end local v2    # "extras":Landroid/os/Bundle;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->dismiss()V

    goto :goto_0

    .line 145
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mBixbycommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 146
    new-instance v11, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mBixbycommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 147
    .local v11, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "keyword"

    const-string v4, "AlreadyExist"

    const-string v6, "no"

    invoke-virtual {v11, v3, v4, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v6, 0x1

    invoke-direct {v4, v6, v11}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    .line 150
    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 152
    .end local v11    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_5
    new-instance v3, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 153
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "args_finish_activity"

    .line 154
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v18, "args_launch_track_activity"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;-><init>(Landroid/app/Activity;[JJZZLjava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 157
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 162
    .end local v5    # "ids":[J
    .end local v13    # "playlistId":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0152

    .line 164
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v4, v6

    .line 163
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->setErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    .end local v12    # "playlist":Lcom/samsung/android/app/music/common/model/playlist/Playlist;
    .end local v15    # "sourcePlaylistId":Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    const-string v3, "Playlist response is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->setErrorMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_b

    .line 175
    move-object/from16 v0, p4

    instance-of v3, v0, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v14

    .line 177
    .local v14, "resultCode":I
    const/16 v3, 0x106a

    if-ne v14, v3, :cond_a

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mBixbycommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 179
    new-instance v11, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mBixbycommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 180
    .restart local v11    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "keyword"

    const-string v4, "AlreadyExist"

    const-string/jumbo v6, "yes"

    invoke-virtual {v11, v3, v4, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v11}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 184
    .end local v11    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0152

    .line 185
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 184
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->setErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0319

    .line 189
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v4, v6

    const/4 v6, 0x1

    .line 190
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    .line 189
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 188
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->setErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    .end local v14    # "resultCode":I
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0319

    .line 195
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v4, v6

    const/4 v6, 0x1

    .line 196
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    .line 195
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 194
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->setErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onClickNegativeButton()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected onClickPositiveButton()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->onClickPositiveButton(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 71
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v0

    .line 60
    .local v0, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v0, :cond_0

    .line 61
    const-string v1, "CreateMyPlaylist"

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistExecutor;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistExecutor;-><init>(Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;

    invoke-direct {v4, v0, p0, p0}, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/DialogFragment;Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;)V

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method protected onSetDescriptionResId()I
    .locals 1

    .prologue
    .line 108
    const v0, 0x7f0a0288

    return v0
.end method

.method protected onSetEditTextInitialMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0151

    .line 93
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s %03d"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->getDefaultPlaylistName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onSetPositiveButtonResId()I
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f0a0097

    return v0
.end method

.method protected onSetTitleResId()I
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f0a0289

    return v0
.end method

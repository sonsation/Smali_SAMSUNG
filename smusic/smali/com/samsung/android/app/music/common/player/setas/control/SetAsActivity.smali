.class public Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "SetAsActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$PreviewPlayerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_PROGRESS_DELAY:J = 0x12cL


# instance fields
.field private mAudioId:J

.field private mHighlightProgressUpdater:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

.field private final mOnPermissionResultListener:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

.field private mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

.field private mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

.field private mPreviewPlayerListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

.field private mRingtoneController:Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;

.field private mSetAsMenuController:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;

.field private final mSetAsRecommendGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

.field private final mSetAsToneGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAs-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    .line 61
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->TAG:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    .line 365
    new-instance v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$4;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mOnPermissionResultListener:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    .line 439
    new-instance v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$6;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsToneGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    .line 463
    new-instance v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$7;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsRecommendGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsRecommendGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsToneGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->updateProgressDelayed(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mAudioId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->initPreviewPlayerInternal(J)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getSourceId(J)J
    .locals 11
    .param p1, "audioId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 140
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 141
    .local v1, "uri":Landroid/net/Uri;
    const-wide/16 v8, 0x0

    .line 143
    .local v8, "sourceId":J
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "source_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 145
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 148
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    :cond_1
    :goto_0
    return-wide v8

    .line 148
    :catch_0
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :catchall_0
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v3, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private handleErrorInternal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 286
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getExternalStorageSdPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "sdcardPathPrefix":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    .line 292
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 293
    .local v0, "isSdCardMounted":Z
    if-nez v0, :cond_1

    .line 294
    const v4, 0x7f0a00d1

    invoke-static {p1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 310
    .end local v0    # "isSdCardMounted":Z
    .end local v1    # "sdcardPathPrefix":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 300
    .restart local v1    # "sdcardPathPrefix":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget v4, Landroid/system/OsConstants;->F_OK:I

    invoke-static {p2, v4}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 301
    const v4, 0x7f0a00c1

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->finish()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v2

    :cond_2
    move v2, v3

    .line 308
    goto :goto_0
.end method

.method private initMenuControllerInternal()V
    .locals 4

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 184
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-nez v0, :cond_0

    .line 185
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Action-bar is not custom-cancel-done style!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$2;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsMenuController:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;

    .line 211
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsMenuController:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 212
    return-void
.end method

.method private initMultiWindowInternal()V
    .locals 3

    .prologue
    .line 215
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v1, v2, :cond_0

    .line 216
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    .line 217
    .local v0, "multiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    new-instance v1, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$3;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 234
    .end local v0    # "multiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    :cond_0
    return-void
.end method

.method private initPreviewPlayerInternal(J)V
    .locals 3
    .param p1, "audioId"    # J

    .prologue
    .line 153
    new-instance v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayerListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->setOnPreviewPlayerListener(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->playReady(JZ)V

    .line 180
    return-void
.end method

.method private initSetAsItemGroupInternal()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 237
    const v4, 0x7f12056a

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 238
    .local v1, "contentView":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsToneGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsMenuController:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->setOnCheckChangedListener(Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;)V

    .line 239
    sget-object v4, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->ToneGroup:Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsToneGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    invoke-virtual {v4, p0, v5, v1}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->build(Landroid/content/Context;Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;Landroid/view/View;)V

    .line 241
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsRecommendGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsMenuController:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->setOnCheckChangedListener(Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;)V

    .line 242
    sget-object v4, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->RecommendGroup:Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsRecommendGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    invoke-virtual {v4, p0, v5, v1}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->build(Landroid/content/Context;Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;Landroid/view/View;)V

    .line 243
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_FW_AUTO_RECOMMENDATION:Z

    if-nez v4, :cond_2

    .line 244
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsRecommendGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    const v5, 0x7f12056c

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->getItem(I)Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;

    move-result-object v3

    .line 245
    .local v3, "highlightView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 246
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsRecommendGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    const v5, 0x7f120062

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->getItem(I)Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;

    move-result-object v0

    .line 249
    .local v0, "beginningView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :cond_1
    const v4, 0x7f120574

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 253
    .local v2, "headerSetAs":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a00de

    .line 255
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a01e6

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 256
    const v4, 0x7f120573

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 258
    .end local v0    # "beginningView":Landroid/view/View;
    .end local v2    # "headerSetAs":Landroid/view/View;
    .end local v3    # "highlightView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;J)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "audioId"    # J

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->startActivity(Landroid/app/Activity;Landroid/os/Bundle;J)V

    .line 81
    return-void
.end method

.method private static startActivity(Landroid/app/Activity;Landroid/os/Bundle;J)V
    .locals 4
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "audioId"    # J

    .prologue
    .line 84
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gez v1, :cond_0

    .line 85
    sget-object v1, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivity() audioId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "extra_audio_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 90
    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 93
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateProgressDelayed(J)V
    .locals 7
    .param p1, "delay"    # J

    .prologue
    .line 261
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsRecommendGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->getCheckedItemId()I

    move-result v1

    .line 263
    .local v1, "recommendType":I
    const v2, 0x7f120062

    if-ne v1, v2, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 271
    .local v0, "highlightOffset":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mHighlightProgressUpdater:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v2, p1, p2, v0, v3}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->update(JII)V

    .line 272
    return-void

    .line 265
    .end local v0    # "highlightOffset":I
    :cond_0
    const v2, 0x7f12056c

    if-ne v1, v2, :cond_1

    .line 266
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mAudioId:J

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->getHighlightOffset(J)I

    move-result v0

    .restart local v0    # "highlightOffset":I
    goto :goto_0

    .line 268
    .end local v0    # "highlightOffset":I
    :cond_1
    const/4 v0, -0x1

    .restart local v0    # "highlightOffset":I
    goto :goto_0
.end method

.method private uriToFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 275
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    move-object v0, p1

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    .line 276
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 278
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 281
    if-eqz v6, :cond_0

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v3, v0

    .line 282
    :cond_1
    :goto_1
    return-object v3

    .line 281
    :catch_0
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_1

    if-eqz v3, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 275
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v3, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public getScreenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 99
    const-string v0, "309"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 346
    sget-object v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 348
    const-wide/16 v0, 0x12c

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->updateProgressDelayed(J)V

    .line 349
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->UX_VERSION_2015A:Z

    if-eqz v4, :cond_0

    .line 105
    const v4, 0x7f0f00c6

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->setTheme(I)V

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    if-nez p1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->getScreenId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendScreenId(Ljava/lang/String;)V

    .line 111
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mOnPermissionResultListener:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "android.permission.READ_PHONE_STATE"

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->newPermissionManager(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    .line 114
    const v4, 0x7f040246

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->setContentView(I)V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 117
    .local v1, "data":Landroid/os/Bundle;
    const-string v4, "extra_audio_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mAudioId:J

    .line 120
    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mAudioId:J

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->getSourceId(J)J

    move-result-wide v2

    .line 121
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 122
    iput-wide v2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mAudioId:J

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mRingtoneController:Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;

    .line 127
    new-instance v4, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    const v5, 0x7f12056a

    .line 128
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mHighlightProgressUpdater:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    .line 129
    new-instance v4, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$PreviewPlayerListener;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$PreviewPlayerListener;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayerListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    .line 131
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->isGranted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 132
    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mAudioId:J

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->initPreviewPlayerInternal(J)V

    .line 134
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->initMenuControllerInternal()V

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->initMultiWindowInternal()V

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->initSetAsItemGroupInternal()V

    .line 137
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->releasePlayer()V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->setOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;)V

    .line 341
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onDestroy()V

    .line 342
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->stop()V

    .line 332
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onPause()V

    .line 333
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsToneGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsRecommendGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 363
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const v3, 0x7f12056d

    const/4 v2, 0x0

    .line 315
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onResume()V

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->isGranted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsRecommendGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    const v1, 0x7f120062

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->setChecked(IZ)V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsRecommendGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    const v1, 0x7f12056c

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->setChecked(IZ)V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->requestPermissions()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsToneGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->isChecked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 322
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->isGranted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsToneGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->setChecked(IZ)V

    .line 325
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsRecommendGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->saveInstanceState(Landroid/os/Bundle;)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsToneGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->saveInstanceState(Landroid/os/Bundle;)V

    .line 355
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 356
    return-void
.end method

.method public saveRingtone()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 389
    .local v1, "context":Landroid/content/Context;
    iget-wide v8, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mAudioId:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    .line 390
    const v7, 0x7f0a020b

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 391
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->finish()V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 397
    .local v6, "values":Landroid/content/ContentValues;
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsToneGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    const v8, 0x7f12056d

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->isChecked(I)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsToneGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    const v8, 0x7f120575

    .line 398
    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->isChecked(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 399
    :cond_2
    const-string v7, "is_ringtone"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 407
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 408
    .local v0, "baseUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->uriToFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "filePath":Ljava/lang/String;
    sget-object v7, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ringtone base uri : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", file path : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->handleErrorInternal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 415
    sget-object v7, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "save ringtone failed!"

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    .end local v0    # "baseUri":Landroid/net/Uri;
    .end local v3    # "filePath":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsToneGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    const v8, 0x7f120576

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->isChecked(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 401
    const-string v7, "is_alarm"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 403
    :catch_0
    move-exception v2

    .line 404
    .local v2, "e":Ljava/lang/RuntimeException;
    :goto_2
    sget-object v7, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saveRingtone() occur: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 418
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "baseUri":Landroid/net/Uri;
    .restart local v3    # "filePath":Ljava/lang/String;
    :cond_5
    invoke-static {v1, v0, v6, v12, v12}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 420
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsRecommendGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    const v8, 0x7f12056c

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->isChecked(I)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    iget-wide v8, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mAudioId:J

    .line 421
    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->getHighlightOffset(J)I

    move-result v4

    .line 422
    .local v4, "highlightOffset":I
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mSetAsToneGroup:Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->getCheckedItemId()I

    move-result v5

    .line 423
    .local v5, "ringtoneType":I
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->mRingtoneController:Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;

    new-instance v8, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$5;

    invoke-direct {v8, p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$5;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)V

    invoke-virtual {v7, v5, v0, v4, v8}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->setAsRingtone(ILandroid/net/Uri;ILcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V

    goto/16 :goto_0

    .line 403
    .end local v0    # "baseUri":Landroid/net/Uri;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "highlightOffset":I
    .end local v5    # "ringtoneType":I
    :catch_1
    move-exception v2

    goto :goto_2
.end method

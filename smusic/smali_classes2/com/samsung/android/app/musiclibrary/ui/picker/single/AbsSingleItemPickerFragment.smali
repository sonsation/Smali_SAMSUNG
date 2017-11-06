.class public abstract Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "AbsSingleItemPickerFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;"
    }
.end annotation


# static fields
.field protected static final ARGS_AUDIO_ID:Ljava/lang/String; = "args_audio_id"

.field private static final SAVED_KEY_SELECTED_ID:Ljava/lang/String; = "saved_key_selected_id"


# instance fields
.field private final mAutoRecommendationOnListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;

.field private final mCommandReceiver:Landroid/content/BroadcastReceiver;

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

.field private mSelectedId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mSelectedId:J

    .line 185
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 223
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mAutoRecommendationOnListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;

    .line 247
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mCommandReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mSelectedId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mSelectedId:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getEventId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEventId(I)Ljava/lang/String;
    .locals 1
    .param p1, "listType"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 264
    sparse-switch p1, :sswitch_data_0

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "eventId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 266
    .end local v0    # "eventId":Ljava/lang/String;
    :sswitch_0
    const-string v0, "6021"

    .line 267
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 269
    .end local v0    # "eventId":Ljava/lang/String;
    :sswitch_1
    const-string v0, "6024"

    .line 270
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 272
    .end local v0    # "eventId":Ljava/lang/String;
    :sswitch_2
    const-string v0, "6027"

    .line 273
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 275
    .end local v0    # "eventId":Ljava/lang/String;
    :sswitch_3
    const-string v0, "6030"

    .line 276
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 264
    nop

    :sswitch_data_0
    .sparse-switch
        0x100002 -> :sswitch_1
        0x100003 -> :sswitch_2
        0x100007 -> :sswitch_3
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method

.method private registerCommandReceiver()V
    .locals 3

    .prologue
    .line 232
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 233
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    sget-object v1, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mCommandReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    return-void
.end method

.method private resetPreviewable()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->stop()V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->release()V

    .line 208
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    .line 210
    :cond_0
    return-void
.end method

.method private unregisterCommandReceiver()V
    .locals 2

    .prologue
    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mCommandReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->abandonAudioFocus()V

    .line 316
    return-void
.end method

.method public getRecommendationResult()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->getRecommendationResult()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 218
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 221
    :cond_0
    return-void
.end method

.method public invalidatePlayableRelatedViews()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->invalidatePlayableRelatedViews()V

    .line 326
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    .line 56
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$menu;->single_item_picker_common:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 136
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->release()V

    .line 106
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroy()V

    .line 107
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 12
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-wide/16 v10, -0x1

    .line 141
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 144
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 145
    const-string v7, "args_audio_id"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 146
    .local v2, "audioId":J
    cmp-long v7, v2, v10

    if-eqz v7, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    .line 148
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->getItemCount()I

    move-result v4

    .line 150
    .local v4, "count":I
    const-string v7, "UiList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " onLoadFinished() | audioId is preset | audioId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    .line 154
    .local v6, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 155
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->getAudioId(I)J

    move-result-wide v8

    cmp-long v7, v8, v2

    if-nez v7, :cond_4

    .line 156
    const-string v7, "UiList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " onLoadFinished() | find matched audioId. position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->scrollToPosition(I)V

    .line 159
    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemChecked(IZ)V

    .line 160
    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mSelectedId:J

    .line 161
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    .line 162
    invoke-interface {v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->isAutoRecommendationOn()Z

    move-result v7

    .line 161
    invoke-interface {v8, v2, v3, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->togglePlay(JZ)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->invalidateOptionsMenu()V

    .line 168
    .end local v0    # "adapter":Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;
    .end local v4    # "count":I
    .end local v5    # "i":I
    .end local v6    # "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    :cond_0
    const-string v7, "args_audio_id"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 170
    .end local v2    # "audioId":J
    :cond_1
    iget-wide v8, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mSelectedId:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-wide v8, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mSelectedId:J

    invoke-static {v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/privatemode/DefaultPrivateUtils;->isPrivateModeItem(Landroid/content/Context;J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->resetList()V

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->resetPreviewable()V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    iget-wide v8, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mSelectedId:J

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->updatePlayingAudioId(J)V

    .line 180
    :cond_2
    iget-wide v8, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mSelectedId:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    iget-wide v8, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mSelectedId:J

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->updatePlayingAudioId(J)V

    .line 183
    :cond_3
    return-void

    .line 154
    .restart local v0    # "adapter":Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;
    .restart local v2    # "audioId":J
    .restart local v4    # "count":I
    .restart local v5    # "i":I
    .restart local v6    # "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mAutoRecommendationOnListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;

    .line 90
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->removeAutoRecommendationOnListener(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->pause()V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->updatePlaybackState(I)V

    .line 93
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onPause()V

    .line 94
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onResume()V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mAutoRecommendationOnListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;

    .line 84
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->addAutoRecommendationOnListener(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;)V

    .line 85
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const-string/jumbo v0, "saved_key_selected_id"

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mSelectedId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 49
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->registerCommandReceiver()V

    .line 78
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->abandonAudioFocus()V

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->unregisterCommandReceiver()V

    .line 100
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    .line 101
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, -0x1

    .line 60
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    if-eqz p2, :cond_0

    .line 62
    const-string/jumbo v0, "saved_key_selected_id"

    .line 63
    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mSelectedId:J

    .line 64
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mSelectedId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mSelectedId:J

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->isAutoRecommendationOn()Z

    move-result v0

    .line 65
    invoke-interface {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->playReady(JZ)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->setChoiceMode(I)V

    .line 72
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->pause()V

    .line 301
    return-void
.end method

.method public play(JZ)V
    .locals 1
    .param p1, "audioId"    # J
    .param p3, "fromHighlight"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->play(JZ)V

    .line 291
    return-void
.end method

.method public playReady(JZ)V
    .locals 1
    .param p1, "audioId"    # J
    .param p3, "fromHighlight"    # Z

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->playReady(JZ)V

    .line 296
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->release()V

    .line 311
    return-void
.end method

.method public resetList()V
    .locals 2

    .prologue
    .line 199
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mSelectedId:J

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->clearChoices()V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->invalidateOptionsMenu()V

    .line 202
    return-void
.end method

.method public setAutoRecommendationViewEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->setAutoRecommendationViewEnabled(Z)V

    .line 214
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setUserVisibleHint(Z)V

    .line 112
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-nez v1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 115
    :cond_0
    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->invalidateOptionsMenu()V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    .line 119
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;
    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->resetPlayingItem()V

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->stop()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->stop()V

    .line 306
    return-void
.end method

.method public stopInvalidatePlayableRelatedViews()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->stopInvalidatePlayableRelatedViews()V

    .line 331
    return-void
.end method

.method public togglePlay(JZ)V
    .locals 1
    .param p1, "audioId"    # J
    .param p3, "fromHighlight"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->mPreviewable:Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->togglePlay(JZ)V

    .line 286
    return-void
.end method

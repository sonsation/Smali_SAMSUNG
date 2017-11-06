.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;
.super Landroid/os/Handler;
.source "PreviewableImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewUpdateHandler"
.end annotation


# static fields
.field public static final INVALIDATE_LIST:I = 0x1

.field public static final RESET_LIST:I = 0x2

.field public static final UPDATE_PROGRESS:I


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    .line 216
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    .line 217
    .local v2, "recyclerView":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->access$200(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 222
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->access$300(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->getCurrentPosition()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->updatePosition(I)V

    .line 223
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 228
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 229
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "audio_id"

    .line 230
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 229
    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->updatePlayingAudioId(J)V

    .line 231
    const-string v4, "is_playing"

    .line 232
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x3

    .line 231
    :cond_2
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->updatePlaybackState(I)V

    .line 234
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->access$300(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->updateDuration(I)V

    .line 235
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 239
    .end local v1    # "bundle":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->updatePlaybackState(I)V

    .line 240
    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->updatePlayingAudioId(J)V

    .line 241
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 242
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

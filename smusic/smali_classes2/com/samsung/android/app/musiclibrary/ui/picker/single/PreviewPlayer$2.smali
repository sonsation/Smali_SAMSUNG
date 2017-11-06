.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;
.super Ljava/lang/Object;
.source "PreviewPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPausedByTransientLossOfFocus:Z

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 449
    packed-switch p1, :pswitch_data_0

    .line 471
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange() - Unknown focusChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 451
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->pause(Z)V

    .line 453
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;->mPausedByTransientLossOfFocus:Z

    goto :goto_0

    .line 458
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->pause(Z)V

    .line 460
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;->mPausedByTransientLossOfFocus:Z

    goto :goto_0

    .line 465
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;->mPausedByTransientLossOfFocus:Z

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$600(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V

    .line 467
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;->mPausedByTransientLossOfFocus:Z

    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

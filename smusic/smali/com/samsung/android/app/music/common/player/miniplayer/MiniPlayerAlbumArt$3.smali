.class Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$3;
.super Ljava/lang/Object;
.source "MiniPlayerAlbumArt.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 235
    const/4 v4, 0x0

    .line 236
    .local v4, "viDirection":I
    const/4 v3, 0x0

    .line 237
    .local v3, "queueType":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "User"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 238
    .local v2, "p":Landroid/os/Parcelable;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 239
    check-cast v1, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .line 241
    .local v1, "info":Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->access$000(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 262
    .end local v1    # "info":Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
    :goto_0
    return v7

    .line 244
    .restart local v1    # "info":Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->getViDirection()I

    move-result v4

    .line 245
    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->access$900(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)I

    move-result v3

    .line 246
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->animationStarted()V

    .line 248
    .end local v1    # "info":Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-static {v6, v3, v5}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->access$1000(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;ILandroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 251
    .local v0, "albumArt":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->access$1100(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;

    move-result-object v5

    invoke-virtual {v5, v4, v0, v3}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->setImageDrawable(ILandroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 254
    .end local v0    # "albumArt":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->access$1100(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;

    move-result-object v5

    invoke-virtual {v5, v4, v8, v3}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->setImageDrawable(ILandroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 257
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->access$1100(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;

    move-result-object v5

    invoke-virtual {v5, v4, v8, v3}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->setImageDrawable(ILandroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

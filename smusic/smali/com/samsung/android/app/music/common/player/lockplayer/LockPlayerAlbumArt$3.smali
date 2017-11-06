.class Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$3;
.super Ljava/lang/Object;
.source "LockPlayerAlbumArt.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final ALBUM_SIZE_CHANGED:I = 0x12c


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fireAlbumSizeChanged(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "albumView"    # Landroid/widget/ImageView;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->access$500(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->fireAlbumSizeChanged(Landroid/widget/ImageView;)V

    .line 208
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x12c

    .line 176
    const-string v2, "SMUSIC-LockPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mViewUpdateHandler what -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 196
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->access$200(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->access$400(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->access$300(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 203
    :cond_0
    :goto_0
    :sswitch_0
    const/4 v2, 0x1

    return v2

    .line 179
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 180
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->access$000(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 182
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->access$200(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-static {v3, v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->access$100(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->access$300(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 192
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "uri":Landroid/net/Uri;
    :sswitch_2
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$3;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->access$200(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$3;->fireAlbumSizeChanged(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xca -> :sswitch_0
        0x12c -> :sswitch_2
    .end sparse-switch
.end method

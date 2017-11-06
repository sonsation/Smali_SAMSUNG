.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerShareableImpl;
.super Lcom/samsung/android/app/music/AbsShareableWithDialog;
.source "PlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerShareableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Landroid/app/Fragment;)V
    .locals 1
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerShareableImpl;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .line 1312
    const-string/jumbo v0, "share_music_from_player"

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;-><init>(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 1313
    return-void
.end method


# virtual methods
.method protected getSharedItemIds()[J
    .locals 4

    .prologue
    .line 1317
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerShareableImpl;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1800(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0
.end method

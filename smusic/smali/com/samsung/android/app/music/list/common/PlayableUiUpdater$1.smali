.class Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;
.super Ljava/lang/Object;
.source "PlayableUiUpdater.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->updatePlayingAudioId(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

.field final synthetic val$audioId:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;->this$0:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    iput-wide p2, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;->val$audioId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryColorChanged(I)V
    .locals 4
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;->this$0:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->access$000(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->updatePlayingColor(I)V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;->this$0:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    iget-wide v2, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;->val$audioId:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->updatePlayingAudioId(J)V

    .line 37
    return-void
.end method

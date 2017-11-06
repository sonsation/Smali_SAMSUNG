.class Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;
.super Ljava/lang/Object;
.source "PlaylistDetailFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocalTracksCountChanged()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 351
    return-void
.end method

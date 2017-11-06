.class Lcom/samsung/android/app/music/common/activity/MusicMainActivity$3;
.super Ljava/lang/Object;
.source "MusicMainActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MusicMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    .prologue
    .line 923
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocalTracksCountChanged()V
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->invalidateOptionsMenu()V

    .line 927
    return-void
.end method

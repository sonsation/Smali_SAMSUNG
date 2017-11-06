.class Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter$1;
.super Ljava/lang/Object;
.source "MusicMainActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/contents/OnDlnaTabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    .prologue
    .line 1781
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter$1;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddDmsTab()V
    .locals 1

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter$1;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->access$1300(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;)V

    .line 1785
    return-void
.end method

.method public onRemoveDmsTab()V
    .locals 1

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter$1;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->access$1300(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;)V

    .line 1790
    return-void
.end method

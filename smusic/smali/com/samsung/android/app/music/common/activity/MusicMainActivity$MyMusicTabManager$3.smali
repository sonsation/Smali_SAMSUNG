.class Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$3;
.super Ljava/lang/Object;
.source "MusicMainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$3;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1558
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 1548
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$3;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$3;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->access$1100(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;)Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->getSelectedTabId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->access$1200(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;I)V

    .line 1553
    return-void
.end method

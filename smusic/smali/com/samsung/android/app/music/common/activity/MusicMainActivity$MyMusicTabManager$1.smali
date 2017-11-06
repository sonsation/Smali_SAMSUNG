.class Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$1;
.super Ljava/lang/Object;
.source "MusicMainActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->ensureInit()V
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
    .line 1436
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$1;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$1;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->access$900(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setPrimaryColor(I)V

    .line 1440
    return-void
.end method

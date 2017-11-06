.class Lcom/samsung/android/app/music/common/activity/MusicMainActivity$1;
.super Ljava/lang/Object;
.source "MusicMainActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 448
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

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
    .line 451
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->access$100(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setPrimaryColor(I)V

    .line 452
    return-void
.end method

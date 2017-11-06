.class Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$1;
.super Ljava/lang/Object;
.source "ArtistDetailActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

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
    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->access$000(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setPrimaryColor(I)V

    .line 169
    return-void
.end method
